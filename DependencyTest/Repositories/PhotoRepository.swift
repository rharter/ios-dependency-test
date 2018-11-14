//
//  PhotoRepository.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

protocol PhotoRepository {
  // This should be an Observable<[URL]>
  func getPhotos() -> [URL]
}
