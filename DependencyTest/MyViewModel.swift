//
//  MyViewModel.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

protocol MyViewModel {
  func photoURLString() -> String
}

class MyViewModelImpl: MyViewModel {
  
  // This should be an Observable<String> so we get changes.
  private let _photoURLString: String
  
  // constructor injection
  init(photoRepo: PhotoRepository) {
    self._photoURLString = photoRepo.getPhotos()
      .map({ $0.absoluteString })
      .joined(separator: "\n")
  }
  
  func photoURLString() -> String {
    return self._photoURLString
  }
}
