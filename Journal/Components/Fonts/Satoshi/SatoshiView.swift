//
//  SatoshiView.swift
//  Journal
//
//  Created by Nico Rückner on 12.05.24.
//

import SwiftUI

struct SatoshiView: View {
  var text: String = "Satoshi 🍣"
  var fontWeight: FontWeight = .BOLD
  var fontSize: FontSize = .LARGE_TITLE
  var body: some View {
    Text(text)
      .font(.custom("Satoshi\(fontWeight.rawValue)", size: fontSize.rawValue))
      .foregroundStyle(.jeeIvory)
  }
}

#Preview {
  ZStack {
    Color.DarkMode.backgroundColor.ignoresSafeArea()
    SatoshiView()
  }
}
