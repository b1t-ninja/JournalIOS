//
//  FloatingActionButtonView.swift
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

import SwiftUI

struct FloatingActionButtonView: View {
  var action: (() -> Void)? = nil
  var body: some View {
    ZStack {
      Color.jeeNight.blur(radius: 80)
      Button {
        if let onClick = action {
          onClick()
        }
      } label: {
        Image(systemName: "plus")
          .foregroundStyle(.jeeIvory)
          .font(.system(size: FontSize.TITLE1.rawValue))
          .padding()
          .background(.jeeOrange)
          .cornerRadius(10)
          .frame(width: 300)
      }
    }
    .frame(width: 100, height: 100)
  }
}

#Preview {
  ZStack {
    Color.DarkMode.backgroundColor.ignoresSafeArea()
    FloatingActionButtonView()
  }
}
