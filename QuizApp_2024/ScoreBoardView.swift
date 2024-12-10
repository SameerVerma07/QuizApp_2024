//
//  ScoreBoardView.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import SwiftUI

struct ScoreBoardView: View {
    var body: some View {
        VStack {
            Image(systemName: "chart.bar.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Check your Scores here!")
        }
        .padding()
    }
}

#Preview {
    ScoreBoardView()
}
