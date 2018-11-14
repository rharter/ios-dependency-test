//
//  PhotoRepositoryImpl.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

class PhotoRepositoryImpl: PhotoRepository {
  
  private let api: Api
  
  init(api: Api) {
    self.api = api
  }
  
  func getPhotos() -> [URL] {
    return self.api.getPhotoUrls()
  }
}
