//
//  MockData.swift
//  Journal
//
//  Created by Nico Rückner on 12.05.24.
//

import Foundation

// Todo: Create an environment object that holds some data and can be manipulated
// for now just an environmentvariable will do, when production, use the server OR SwiftData
struct MockData {
  static func generateEntries() -> [JournalEntry] {
    var entries: [JournalEntry] = []
    let customEntryTexts = [
      "Had a great day exploring a new hiking trail!",
      "Feeling accomplished after finishing a challenging project.",
      "Spent quality time with loved ones over a home-cooked meal.",
      "Feeling a bit overwhelmed today, but taking it one step at a time.",
      "Received encouraging feedback on my work. Feeling motivated!",
      "Took a spontaneous road trip and enjoyed every moment of it.",
      "Feeling grateful for the little moments that bring joy.",
      "Enjoyed a peaceful morning watching the sunrise.",
      "Made progress on my personal goals. Celebrating small victories!",
      "Feeling inspired after attending a creative workshop.",
      "Had a relaxing day pampering myself.",
      "Received unexpected good news! Feeling ecstatic!",
      "Took a break from technology and enjoyed nature's beauty.",
      "Feeling nostalgic listening to old songs.",
      "Enjoyed a cozy evening with a good book and hot chocolate.",
      "Spent the day volunteering and giving back to the community.",
      "Feeling content reflecting on past achievements.",
      "Had a heart-to-heart conversation with a close friend.",
      "Overcame a fear and feeling proud of myself!",
      "Feeling hopeful for the future despite challenges."
    ]
    for entryText in customEntryTexts {
      let randomDate = randomDateWithinPastYear()
      let randomMood = Mood.allCases.randomElement() ?? .UNKNOWN
      let entry = JournalEntry(content: entryText, created: randomDate, mood: randomMood)
      entries.append(entry)
    }
    return entries
  }
  private static func randomDateWithinPastYear() -> Date {
    let startDate = Calendar.current.date(byAdding: .year, value: -1, to: Date()) ?? Date()
    let endDate = Date()
    let randomTime = TimeInterval.random(in: startDate.timeIntervalSince1970...endDate.timeIntervalSince1970)
    return Date(timeIntervalSince1970: randomTime)
  }
}
