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
      Color.jeeLicorice.ignoresSafeArea()
      VStack {
        HeaderView(text: "Emotions")
        ScrollView {
          HStack(alignment: .top, spacing: 20) {
            HappiestDayView()
            // Todo: Think of a better presentation and make it represent the real thing
            EmotionAverageView()
            Spacer()
          }
          .padding(.vertical)
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
