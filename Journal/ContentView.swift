//
//  ContentView.swift
//  Journal
//
//  Created by Nico Rückner on 12.05.24.
//

import SwiftUI

// Perhaps we just use a plain old Hstack for header layout 🤷🏻‍♂️
struct ContentView: View {
  init() {
    let appear = UINavigationBarAppearance()
    
    let atters: [NSAttributedString.Key: Any] = [
      .font: UIFont(name: "CabinetGrotesk-Bold", size: FontSize.LARGE_TITLE.rawValue)!
    ]
    
    appear.largeTitleTextAttributes = atters
    appear.titleTextAttributes = atters
    UINavigationBar.appearance().standardAppearance = appear
    UINavigationBar.appearance().compactAppearance = appear
    UINavigationBar.appearance().scrollEdgeAppearance = appear
  }
  var body: some View {
    NavigationStack {
    ScrollView {
      LazyVStack {
        ForEach(MockData.generateEntries(), id: \.self) { entry in
          JournalEntryView(entry: entry)
        }
      }
    }
    .navigationTitle("Journal")
    .font(.custom("CabinetGrotesk-Bold", size: 23))
      // Todo: customize toolbar items and make them POP 🍾
    .toolbar() {
      HStack {
        Button{
          
        } label: {
          Text("one")
        }
        Button{
          
        } label: {
          Text("two")
        }
      }
    }
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
