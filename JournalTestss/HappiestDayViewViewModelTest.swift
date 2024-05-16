//
//  HappiestDayViewViewModelTest.swift
//  JournalTestss
//
//  Created by Nico Rückner on 15.05.24.
//

import XCTest
@testable import Journal

final class HappiestDayViewViewModelTest: XCTestCase {
  let viewModel = HappiestDayViewViewModel(entries: MockData.testData)
  func canCreateHappiestDayViewViewModel() {
    XCTAssertNotNil(viewModel)
  }
  
  func canCalculateHappiestDay() {
    let today = Date.now
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "E"
    let expected = dateFormatter.string(from: today)
    let actual = viewModel.happiestDay
    
    XCTAssertEqual(expected, actual)
  }
}
