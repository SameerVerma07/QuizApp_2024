//
//  QuizView.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import SwiftUI
struct QuizView: View {
    var body: some View {
        NavigationView {
            List {
                QuizRow(title: "Marvel Quiz")
                QuizRow(title: "Geography Quiz")
                QuizRow(title: "History Quiz")
            }
            .navigationTitle("Quiz")
        }
    }
}



struct QuizRow: View {
    let title: String
    @State private var isPresentingQuiz: Bool = false

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
            Spacer()
            Button("Start") {
                isPresentingQuiz = true
            }
            .buttonStyle(.borderedProminent)
            .fullScreenCover(isPresented: $isPresentingQuiz) {
                    QuizDetailView(title: title)
            }
        }
        .padding(.vertical, 8)
    }
}


#Preview {
    QuizView()
}
