//
//  DependencyGraph.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

// The DependencyGraph is a mostly empty class that simply has a `shared()` method
// returning an overridable instance of itself.
//
// All actual dependencies are provided via extension functions on this class, allowing
// them to be scoped to targets.
//
// When testing classes that use constructor injection (preferred), the test can simply
// construct the object with fakes without needing to interact with this.
//
// When testing classes that use property injection, the test can use `setInstance()` to
// override the shared instance, only in the scope of the test, with a subclass that
// injects the fake implementations.
//
class DependencyGraph {
  private static var instance: DependencyGraph!
  
  static func shared() -> DependencyGraph {
    if (self.instance == nil) {
      self.instance = DependencyGraph()
    }
    return self.instance
  }
  
  // This can be used to override the graph for things like UI tests, where the 
  static func setInstance(graph: DependencyGraph) {
    instance = graph
  }
}
