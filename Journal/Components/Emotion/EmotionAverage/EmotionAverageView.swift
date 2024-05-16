//
//  EmotionAverageView.swift
//  Journal
//
//  Created by Nico Rückner on 16.05.24.
//

import SwiftUI

struct EmotionAverageView: View {
  var averageMood: Mood = Mood.GOOD
  var body: some View {
      VStack {
        SatoshiView(text: "Average Mood", fontWeight: .MEDIUM, fontSize: .TITLE2)
        Image(systemName: averageMood.rawValue)
          .foregroundStyle(.jeeIvory)
          .font(.system(size: 98))
      }
    }
}

#Preview {
  ZStack {
    Color.jeeLicorice.ignoresSafeArea()
    EmotionAverageView()
  }
}
