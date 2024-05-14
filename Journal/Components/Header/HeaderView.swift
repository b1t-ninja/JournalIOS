//
//  HeaderView.swift
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

import SwiftUI

struct HeaderView: View {
  var text: String = "Journal"
  var fontWeight: FontWeight = .BOLD
  var fontSize: FontSize = .LARGE_TITLE
  var buttonOne: AnyView? = nil
  var buttonTwo: AnyView? = nil
  var body: some View {
    HStack(alignment: .center) {
      CabinetGroteskView(text: text, fontWeight: fontWeight, fontSize: fontSize)
      Spacer()
      
      if let button1 = buttonOne {
        button1
      }
      
      if let button2 = buttonTwo {
        button2
      }
    }
  }
}

#Preview {
  ZStack {
    Color.DarkMode.backgroundColor.ignoresSafeArea()
    HeaderView()
  }
}
