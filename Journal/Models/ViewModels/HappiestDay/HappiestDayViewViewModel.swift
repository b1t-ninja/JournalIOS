//
//  HappiestDayViewViewModel.swift
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

import Foundation

public final class HappiestDayViewViewModel {
  var entries: [JournalEntry]
  var daycounts: [String: Int] = [
    "Mon": 0,
    "Tue": 0,
    "Wed": 0,
    "Thu": 0,
    "Fri": 0,
    "Sat": 0,
    "Sun": 0
  ]
  
  var happiesDay: String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "E"
    
    entries.forEach { entry in
      daycounts[dateFormatter.string(from: entry.created)]! += 1
    }
    
    if let maxEntry = daycounts.max(by: { $0.value < $1.value }) {
      let keyOfMaxValue = maxEntry.key
      return keyOfMaxValue
    } else {
      return ""
    }
  }
  
  init(entries: [JournalEntry]) {
    self.entries = entries
  }
}
