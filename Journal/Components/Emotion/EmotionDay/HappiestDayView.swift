//
//  HappiestDayView.swift
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

import SwiftUI

struct HappiestDayView: View {
  var day: String = "Sa"
  @State private var start = Date.now
  var body: some View {
    VStack {
      Circle()
        .frame(width: 100)
        .foregroundStyle(.jeeIvory)
        .overlay(
          Circle()
            .frame(width: 95)
            .foregroundStyle(.jeeNight)
        )
        .overlay(
          SatoshiView(text: day, fontWeight: .BOLD, fontSize: .LARGE_TITLE)
        )
    }
  }
}

#Preview {
  HappiestDayView().preferredColorScheme(.dark)
}
