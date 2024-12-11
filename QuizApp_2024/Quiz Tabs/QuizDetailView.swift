//
//  QuizDetailView.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import SwiftUI

struct QuizDetailView: View {
    let title: String
    @Environment(\.dismiss) var dismiss
    @State private var showQuitAlert = false

    var body: some View {
        NavigationStack {
            switch title {
            case "Marvel Quiz":
                QuizBody(title: title)
                
            case "Geography Quiz":
                QuizBody(title: title)

            case "History Quiz":
                QuizBody(title: title)

            default: 
                Text("Get ready for an exciting quiz!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            Spacer()
                .navigationTitle(title) // Set the navigation title to the quiz title
                .navigationBarTitleDisplayMode(.large) // Display title in large style
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Quit") {
                            showQuitAlert.toggle() // Show the quit alert
                        }
                    }
                }
                .alert(isPresented: $showQuitAlert) {
                    Alert(
                        title: Text("Are you sure?"),
                        message: Text("If you leave the test, your score will be zero."),
                        primaryButton: .destructive(Text("OK")) {
                            dismiss() // Dismiss the quiz
                        },
                        secondaryButton: .cancel() // Cancel button to close the alert
                    )
                }
        }
    }
}

#Preview {
    QuizDetailView(title: "Sample Quiz")
}
