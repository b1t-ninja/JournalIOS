////
////  EmotionChartView.swift
////  Journal
////
////  Created by Nico Rückner on 14.05.24.

import SwiftUI
import Charts

struct EmotionChartView: View {
  @State private var entries: [JournalEntry] = MockData.generateEntries().sorted { $0.created > $1.created }
  @State private var isAnimated: Bool = false
  @State private var trigger: Bool = false
  var body: some View {
    Chart {
      ForEach(entries) { download in
        LineMark(
          x: .value("Month", download.created.formatted()),
          y: .value("Downloads", download.isAnimated ? download.mood.getNumericValue() : 0)
        )
        .interpolationMethod(.catmullRom)
        .foregroundStyle(.jeePictionBlue)
        .symbol {
          Circle()
            .fill(.jeePictionBlue)
            .frame(width: 10, height: 10)
        }
        .opacity(download.isAnimated ? 1 : 0)
      }
    }
    .chartYScale(domain: 0...8)
    .frame(height: 250)
    .onAppear(perform: animateChart)
  }
  
  // MARK: Animating Chart
  private func animateChart() {
    guard !isAnimated else { return }
    isAnimated = true
    
    $entries.enumerated().forEach { index, element in
      let delay = Double(index) * 0.05
      DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        withAnimation(.smooth) {
          element.wrappedValue.isAnimated = true
        }
      }
    }
  }
}


#Preview {
  ZStack {
    Color.jeeNight.ignoresSafeArea()
    EmotionChartView().preferredColorScheme(.dark)
  }
}
