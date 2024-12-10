//
//  ProfileView.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("This is your Profile!")
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
