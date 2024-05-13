//
//  Mood.swift
//  Journal
//
//  Created by Nico Rückner on 12.05.24.
//

import Foundation

enum Mood: String, CaseIterable, Identifiable {
  case VERY_GOOD = "gauge.with.dots.needle.100percent"
  case GOOD = "gauge.with.dots.needle.67percent"
  case MEDIUM = "gauge.with.dots.needle.50percent"
  case UNKNOWN = "questionmark.circle"
  case LOW = "gauge.with.dots.needle.0percent"
  var id: Self { self }
  
  func getNumericValue() -> Int {
    switch(self) {
    case .VERY_GOOD:
      return 8
    case .GOOD:
      return 6
    case .MEDIUM:
      return 4
    case .UNKNOWN:
      return 2
    case .LOW:
      return 0
    }
  }
}
