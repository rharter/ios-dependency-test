//
//  MyViewModelTests.swift
//  DependencyTestTests
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import XCTest
@testable import DependencyTest

// Testing ViewModels is pretty simple, since they use constructor injection.
//
// In this test we create a fake PhotoRepo, provide it to the ViewModel impl,
// and use it to provide test values that we then assert.
//
class MyViewModelTests: XCTestCase {
  
  private class FakePhotoRepo: PhotoRepository {
    var photos: [URL]? = nil
    func getPhotos() -> [URL] {
      return self.photos!
    }
  }
  
  private var photoRepo: FakePhotoRepo!
  
  override func setUp() {
    self.photoRepo = FakePhotoRepo()
  }
  
  func testShowsPhotoUrls() {
    // Given
    self.photoRepo.photos = [
      URL(string: "http://example.com/foo/")!,
      URL(string: "http://example.com/bar/")!
    ]
    
    // When
    // since the read of photoRepo happens on init we need to initialize this per test
    let viewModel = MyViewModelImpl(photoRepo: self.photoRepo)
    
    // Then
    XCTAssertEqual(viewModel.photoURLString(), "http://example.com/foo/\nhttp://example.com/bar/")
  }
  
}

