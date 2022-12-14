//
//  ZAQueueTest.swift
//  SwiftCollectionsTests
//
//  Created by Do Huu Phuc on 20/09/2022.
//


import Foundation
import XCTest

class ZAQueueTest: XCTestCase {
    func testEmpty() {
      var queue = ZAQueue<Int>()
      XCTAssertTrue(queue.isEmpty)
      XCTAssertEqual(queue.count, 0)
      XCTAssertEqual(queue.front, nil)
      XCTAssertNil(queue.dequeue())
    }

    func testOneElement() {
      var queue = ZAQueue<Int>()

      queue.enqueue(123)
      XCTAssertFalse(queue.isEmpty)
      XCTAssertEqual(queue.count, 1)
      XCTAssertEqual(queue.front, 123)

      let result = queue.dequeue()
      XCTAssertEqual(result, 123)
      XCTAssertTrue(queue.isEmpty)
      XCTAssertEqual(queue.count, 0)
      XCTAssertEqual(queue.front, nil)
    }

    func testTwoElements() {
      var queue = ZAQueue<Int>()

      queue.enqueue(123)
      queue.enqueue(456)
      XCTAssertFalse(queue.isEmpty)
      XCTAssertEqual(queue.count, 2)
      XCTAssertEqual(queue.front, 123)

      let result1 = queue.dequeue()
      XCTAssertEqual(result1, 123)
      XCTAssertFalse(queue.isEmpty)
      XCTAssertEqual(queue.count, 1)
      XCTAssertEqual(queue.front, 456)

      let result2 = queue.dequeue()
      XCTAssertEqual(result2, 456)
      XCTAssertTrue(queue.isEmpty)
      XCTAssertEqual(queue.count, 0)
      XCTAssertEqual(queue.front, nil)
    }

    func testMakeEmpty() {
      var queue = ZAQueue<Int>()

      queue.enqueue(123)
      queue.enqueue(456)
      XCTAssertNotNil(queue.dequeue())
      XCTAssertNotNil(queue.dequeue())
      XCTAssertNil(queue.dequeue())

      queue.enqueue(789)
      XCTAssertEqual(queue.count, 1)
      XCTAssertEqual(queue.front, 789)

      let result = queue.dequeue()
      XCTAssertEqual(result, 789)
      XCTAssertTrue(queue.isEmpty)
      XCTAssertEqual(queue.count, 0)
      XCTAssertEqual(queue.front, nil)
    }
}

