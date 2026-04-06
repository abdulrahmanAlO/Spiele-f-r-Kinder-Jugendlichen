//
//  Vocabulary mastery.swift
//  Alphabetizer
//
//  Created by Abdulrahman Al-qathmi on 28.09.25.
//

import SwiftUI

struct Vocabulary_mastery: View {
    @State private var showText = false
    
    var body: some View {
        Text("three consecutive wins completes a vocabulary set")
            .font(.largeTitle)
            .foregroundStyle(Color.white)
            .bold()
            .font(.system(size: 60))
            .foregroundStyle(Color.white)
            .padding(.horizontal, 80)
            .padding(.vertical, 20)
            .background(RoundedRectangle(cornerRadius: 30)
                .fill(Color.purple))
        
            .task {
                try? await Task.sleep(nanoseconds: 15_000_000_000) // 2 Sekunden
                showText = true
            }
        if showText {
            VStack(spacing: 20) {
                ScoreView()
                MessageView()
                Spacer()
                WordCanvas()
                Spacer()
                SubmitButton()
            }
            .padding(.top, 50)
        }
    }
}







#Preview {
    Vocabulary_mastery()
        .environment(Alphabetizer())
}
