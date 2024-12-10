//
//  MarvelQuiz.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import SwiftUI

struct MarvelQuiz: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var currentQuestionIndex = 0
    @State private var timeRemaining = 60 // 1 minute for each question
    @State private var score = 0
    @State private var questions: [(question: String, options: [String], correctOption: String)] = [
        ("Who is known as the 'God of Thunder'?", ["Thor", "Hawkeye", "Loki", "Iron Man"], "Thor"),
        ("What is the name of Captain America's shield?", ["Vibranium Shield", "Steel Shield", "Adamantium Shield", "Plastic Shield"], "Vibranium Shield"),
        ("In which movie does the Avengers first assemble?", ["The Avengers", "Age of Ultron", "Endgame", "Infinity War"], "The Avengers")
    ]
    @State private var showResult = false
    
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
        .navigationTitle("Marvel Quiz")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            startTimer()
        }
        .alert(isPresented: $showResult) {
            Alert(
                title: Text("Quiz Complete"),
                message: Text("Your score is \(score) out of \(questions.count)."),
                dismissButton: .default(Text("OK")) {
                    dismiss() // Navigate back to the main screen
                }
            )
        }
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            guard timeRemaining > 0 else {
                timer.invalidate()
                if currentQuestionIndex < questions.count - 1 {
                    nextQuestion()
                } else {
                    showResult = true
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
    }
}

#Preview {
    MarvelQuiz()
}
