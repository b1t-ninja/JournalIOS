//
//  EmotionStatisticsView.swift
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

import SwiftUI

struct EmotionStatisticsView: View {
  var body: some View {
    ZStack {
      Color.jeeNight.ignoresSafeArea()
      VStack {
        HeaderView(text: "Emotions")
        ScrollView {
          HStack {
            VStack(alignment: .leading) {
              SatoshiView(text: "Happiest day", fontWeight: .MEDIUM, fontSize: .TITLE2)
              HappiestDayView()
            }
            Spacer()
          }
          .padding(.vertical)
          // Happiest days
          // Average Mood
          EmotionChartView()
        }
      }
      .padding()
    }
  }
}

#Preview {
  EmotionStatisticsView().preferredColorScheme(.dark)
}
