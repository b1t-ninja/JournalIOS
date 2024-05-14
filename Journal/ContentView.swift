//
//  ContentView.swift
//  Journal
//
//  Created by Nico Rückner on 12.05.24.
//

import SwiftUI

struct ContentView: View {
  var entries: [JournalEntry] = MockData.generateEntries()
  var body: some View {
    NavigationStack {
      // Header
      HeaderView(
        buttonOne: AnyView(
          NavigationLink {
            EmotionStatisticsView()
          } label: {
            Image(systemName: "chart.xyaxis.line")
              .font(.system(size: FontSize.TITLE1.rawValue))
              .foregroundStyle(.jeeIvory)
          }
        ),
        buttonTwo: AnyView(Image(systemName: "line.horizontal.3.decrease")
          .font(.system(size: FontSize.TITLE1.rawValue)))
      )
      ScrollView {
        LazyVStack {
          ForEach(entries.sorted { $0.created > $1.created }) { entry in
            JournalEntryView(entry: entry)
          }
        }
      }
      .overlay(
        FloatingActionButtonView()
          .offset(x: 150, y: 320)
      )
    }
  }
}


#Preview {
  ZStack {
    Color.DarkMode.backgroundColor.ignoresSafeArea()
    ContentView()
      .preferredColorScheme(.dark)
  }
}
