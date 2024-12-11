//
//  QuizBody.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 12/12/24.
//

import SwiftUI
import Foundation

struct QuizBody: View {
    let title: String
    let questions: [Question]
    
    @Environment(\.dismiss) var dismiss
    @State private var currentQuestionIndex = 0
    @State private var timeRemaining = 60 // 1 minute for each question
    @State private var score = 0
    @State private var showResult = false
    @State private var timer: Timer? // Add a state variable for the timer
    
    init(title: String) {
        self.title = title
        switch title {
        case "Marvel Quiz":
            self.questions = marvelQuestions
        case "Geography Quiz":
            self.questions = geographyQuestions
        case "History Quiz":
            self.questions = historyQuestions
        default:
            self.questions = [] // Default to an empty array if no match
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Question \(currentQuestionIndex + 1)")
                    .font(.headline)
                Spacer()
                Text("Time: \(timeRemaining)s")
                    .font(.headline)
            }
            .padding(.top, 0.0)
            
            Spacer()
            
            Text(questions[currentQuestionIndex].question)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.leading, 10.0)
                .frame(width: 360.0, height: 200.0)
            
            ForEach(0..<questions[currentQuestionIndex].options.count, id: \.self) { index in
                Button(action: {
                    self.selectOption(option: questions[currentQuestionIndex].options[index])
                }) {
                    Text(questions[currentQuestionIndex].options[index])
                        .font(.body)
                        .padding()
                        .frame(maxWidth: .infinity) // Set the button to full width
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
                .padding(.all, 0.0)
            }
            Spacer()
            Text("\(currentQuestionIndex + 1) / \(questions.count)")
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 0.0)
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            startTimer()
        }
        .onDisappear {
            timer?.invalidate() // Ensure the timer is invalidated when the view disappears
        }
        .alert(isPresented: $showResult) {
            Alert(
                title: Text("Quiz Complete"),
                message: Text("Your score is \(score) out of \(questions.count)."),
                dismissButton: .default(Text("OK")) {
                    quizHistory.addQuizResult(title: title, score: score)
                    dismiss()
                }
            )
        }
    }
    
    func startTimer() {
        timer?.invalidate() // Invalidate the previous timer before creating a new one
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            guard timeRemaining > 0 else {
                timer.invalidate()
                if currentQuestionIndex < questions.count - 1 {
                    nextQuestion()
                } else {
                    showResult = true
                    timeRemaining = 0
                }
                return
            }
            timeRemaining -= 1
        }
    }
    
    func selectOption(option: String) {
        if option == questions[currentQuestionIndex].correctOption {
            score += 1
        }
        if currentQuestionIndex < questions.count - 1 {
            nextQuestion()
        } else {
            showResult = true
        }
    }
    
    func nextQuestion() {
        currentQuestionIndex += 1
        timeRemaining = 60
        startTimer()
    }
}
