//
//  ContentView.swift
//  QuizApp_2024
//
//  Created by Sameer Verma on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        // Set the Tab Bar appearance to white
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView {
            QuizView()
                .tabItem {
                    Label("Quiz", systemImage: "pencil")
                }
            
            ScoreBoardView()
                .tabItem {
                    Label("Score Board", systemImage: "chart.bar.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
