//
//  CabinetGroteskView.swift
//  Journal
//
//  Created by Nico Rückner on 12.05.24.
//

import SwiftUI

struct CabinetGroteskView: View {
  var text: String = "CabinetGrotesk 🧌"
  var fontWeight: FontWeight = .BOLD
  var fontSize: FontSize = .LARGE_TITLE
  var body: some View {
    Text(text)
      .font(.custom("CabinetGrotesk\(fontWeight.rawValue)", size: fontSize.rawValue))
      .foregroundStyle(.jeeIvory)
  }
}

#Preview {
    CabinetGroteskView()
}
