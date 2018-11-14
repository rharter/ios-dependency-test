//
//  ViewControllerTests.swift
//  DependencyTestUITests
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import XCTest
@testable import DependencyTest

// Since we don't control the construction of UIViewControllers we can't use constructor
// injection (or can we?), so we use property injection.  In this case we simply use
// provide a fake dependency graph that knows how to inject the ViewController with our
// test doubles and hten we can test values based on that.

class ViewModelTests: XCTestCase {
  
  private var viewModel: MyViewModel!
  
  // Create a fake dependency graph for use by these tests
  private class FakeDependencyGraph: DependencyGraph {
    
    private let viewModel: MyViewModel
    
    init(viewModel: MyViewModel) {
      self.viewModel = viewModel
    }
    
    func inject(viewController: ViewController) {
      viewController.viewModel = self.viewModel
    }
  }
  
  // We provide a fake MyViewModel instance here that returns a simple string.
  //
  // We'd probably want this to have a settable string per test so we can test
  // permutations like invalid string, empty string, etc.
  private class FakeViewModel: MyViewModel {
    func photoURLString() -> String {
      return "foo"
    }
  }
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // Setup our dependencies
    viewModel = FakeViewModel()
    DependencyGraph.setInstance(graph: FakeDependencyGraph(viewModel: viewModel))
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() {
    // TODO Check that the UITextView shows "foo" for the string
  }
  
}
