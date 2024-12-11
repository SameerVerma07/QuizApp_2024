//
//  QuizHistory.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import Foundation

// Shared model to store quiz history
class QuizHistory: ObservableObject {
    struct QuizRecord: Identifiable {
        let id = UUID() // Unique identifier for each record
        let title: String
        let score: Int
        let date: String
        let time: String
    }
    
    @Published var history: [QuizRecord] = []
    
    func addQuizResult(title: String, score: Int) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        let date = dateFormatter.string(from: Date())
        
        let newRecord = QuizRecord(
            title: title,
            score: score,
            date: date,
            time: "\(Date().formatted(date: .omitted, time: .shortened))"
        )
        
        // Prepend the new result to show it at the top
        history.insert(newRecord, at: 0)
    }
}


// Shared instance
let quizHistory = QuizHistory()

