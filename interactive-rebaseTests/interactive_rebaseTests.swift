//
//  interactive_rebaseTests.swift
//  interactive-rebaseTests
//
//  Created by Antonio on 01/04/23.
//

import XCTest
@testable import interactive_rebase

final class interactive_rebaseTests: XCTestCase {
    
    private var viewModel: ViewModel!

    override func setUp() {
        viewModel = ViewModel()
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
        viewModel = nil
    }
    
    func testViewModel_listNotEmpty() {
        XCTAssertTrue(!viewModel.items.isEmpty)
    }
    
    func testViewModel_deleteFirstItem() throws {
        // Given
        let itemToDelete = try XCTUnwrap(viewModel.items.first)
        let initialCount = viewModel.items.count
        // When
        viewModel.delete(item: itemToDelete)
        // Then
        XCTAssertEqual(viewModel.items.count, initialCount - 1)
    }
    
    func testViewModel_deleteLastItem() throws {
        // Given
        let itemToDelete = try XCTUnwrap(viewModel.items.last)
        let initialCount = viewModel.items.count
        // When
        viewModel.delete(item: itemToDelete)
        // Then
        XCTAssertEqual(viewModel.items.count, initialCount - 1)
    }


}
