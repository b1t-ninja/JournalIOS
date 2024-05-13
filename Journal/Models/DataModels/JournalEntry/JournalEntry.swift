//
//  JournalEntry.swift
//  Journal
//
//  Created by Nico Rückner on 12.05.24.
//

import Foundation

struct JournalEntry: Hashable, Identifiable {
  var id = UUID()
  var content: String
  var created: Date
  var mood: Mood
}

