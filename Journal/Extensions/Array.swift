//
//  Array.swift
//  Journal
//
//  Created by Nico Rückner on 15.05.24.
//

import Foundation

extension Array where Element: Hashable {
  var mostCommonElement: Element? {
    var counts: [Element: Int] = [:]
    
    self.forEach { elem in
      counts[elem, default: 0] += 1
    }
    
    return counts.max(by: {$0.value < $1.value})?.key
  }
}
