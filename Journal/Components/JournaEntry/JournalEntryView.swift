//
//  JournalEntryView.swift
//  Journal
//
//  Created by Nico Rückner on 13.05.24.
//

import SwiftUI

struct JournalEntryView: View {
  var entry: JournalEntry = JournalEntry(content: "Some entry for me", created: Date.now, mood: .GOOD)
  var body: some View {
      VStack(alignment: .leading) {
        HStack(alignment: .center) {
          Image(systemName: entry.mood.rawValue)
            .font(.system(size: FontSize.TITLE1.rawValue))
            .foregroundStyle(Color.DarkMode.foregroundColor)
          SatoshiView(text: entry.content, fontWeight: .REGULAR, fontSize: .TITLE1)
            .lineLimit(2)
        }
        Divider()
        SatoshiView(text: entry.created.formatted(), fontWeight: .REGULAR, fontSize: .BODY)
      }
      .padding()
      .background(Color.DarkMode.greenBackgroundColor)
      .cornerRadius(10)
      .padding(.horizontal, 10)
    }
}

#Preview {
  ZStack {
    Color.DarkMode.backgroundColor.ignoresSafeArea()
    JournalEntryView().preferredColorScheme(.dark)
  }
}
