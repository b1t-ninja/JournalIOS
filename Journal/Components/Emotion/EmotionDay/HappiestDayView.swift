//
//  HappiestDayView.swift
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

import SwiftUI

struct HappiestDayView: View {
  var viewModel: HappiestDayViewViewModel = HappiestDayViewViewModel(entries: MockData.testData)
  @State private var start = Date.now
  var body: some View {
    VStack(alignment: .leading) {
      SatoshiView(text: "Happiest day", fontWeight: .MEDIUM, fontSize: .TITLE2)
      Circle()
        .frame(width: 100)
        .foregroundStyle(.jeeIvory)
        .overlay(
          Circle()
            .frame(width: 95)
            .foregroundStyle(.jeeNight)
        )
        .overlay(
            SatoshiView(text: viewModel.happiestDay, fontWeight: .BOLD, fontSize: .LARGE_TITLE)
        )
    }
  }
}

#Preview {
  HappiestDayView().preferredColorScheme(.dark)
}
