//
//  HappiestDayViewViewModel.swift
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

import Foundation

public final class HappiestDayViewViewModel {
  var dateFormatter = DateFormatter()
  var entries: [JournalEntry]
  
  var moodDays: [Mood: [String]] = [
    Mood.VERY_GOOD: [],
    Mood.GOOD: [],
    Mood.MEDIUM: [],
    Mood.UNKNOWN: [],
    Mood.LOW: []
  ]
  
  var happiestDay: String {
    dateFormatter.dateFormat = "E"
    entries.forEach {entry in
      moodDays[entry.mood]?.append(dateFormatter.string(from: entry.created))
    }
    for (_, value) in moodDays {
      if !value.isEmpty {
        return value.mostCommonElement!
      }
    }
    return "💣"
  }
  
  init(entries: [JournalEntry]) {
    self.entries = entries
  }
}
