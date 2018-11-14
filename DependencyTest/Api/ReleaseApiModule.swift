//
//  ReleaseApiModule.swift
//  DependencyTest Release
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

// The ReleaseApiModule provides a simple ReleaseApi, and is only included in the release target.
extension DependencyGraph {

  func provideApi() -> Api {
    return ReleaseApi()
  }
}
