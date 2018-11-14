//
//  RepositoryModule.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

extension DependencyGraph {
  
  // This takes care of providing the right PhotoRepository, using
  // the DependencyGraph extensions to supply dependencies.
  func providePhotoRepository() -> PhotoRepository {
    return PhotoRepositoryImpl(api: self.provideApi())
  }
}
