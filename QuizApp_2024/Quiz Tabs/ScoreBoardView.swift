//
//  ScoreBoardView.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//
import SwiftUI

struct ScoreBoardView: View {
    @ObservedObject var history = quizHistory
    
    var body: some View {
        NavigationView {
            List {
                ForEach(history.history) { record in // Uses `id` from `QuizRecord`
                    VStack(alignment: .leading) {
                        Text("Quiz: \(record.title)")
                            .font(.headline)
                        Text("Score: \(record.score)")
                            .font(.subheadline)
                        Text("Date: \(record.date)")
                            .font(.footnote)
                        Text("Time: \(record.time)")
                            .font(.footnote)
                    }
                    .padding()
                }
            }
            .navigationTitle("Score Board")
        }
    }
}

#Preview {
    ScoreBoardView()
}

