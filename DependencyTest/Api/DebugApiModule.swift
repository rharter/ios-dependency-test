//
//  DebugApiModule.swift
//  DependencyTest Debug
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

// The DebugApiModule is only included in the Debug target, and uses some
// extra logic to read the endpoint value (set from the debug drawer) and
// provide a DebugApi that acts accordingly.
//
extension DependencyGraph {
  
  func provideEndpoint() -> BaseURL {
    let urlString = UserDefaults.standard.string(forKey: "endpoint")
    switch urlString {
    case "debug":
      return URL(string: "https://debug.example.com/api/")!
    case "production":
      return URL(string: "https://api.example.com/")!
    default:
      return URL(string: "https://staging.example.com/api/")!
    }
  }
  
  func provideApi() -> Api {
    return DebugApi(baseURL: self.provideEndpoint())
  }
}
