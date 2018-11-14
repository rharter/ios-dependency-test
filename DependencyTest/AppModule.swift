//
//  AppModule.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

// The App Module holds providers and injections for app components.
//
// This is simply wiring and exists in both the Debug and Release
// targets, but *not* test targets.
//
extension DependencyGraph {
  
  // The injector for the ViewController. Since we don't control the
  // construction of UIViewControllers they can't use constructor
  // injection, so we have to do property injection instead.
  func inject(_ viewController: ViewController) {
    viewController.viewModel = self.provideMyViewModel()
  }

  // Providers simply return implementations of interfaces. They can
  // utilize other providers to provide dependencies.
  func provideMyViewModel() -> MyViewModel {
    return MyViewModelImpl(photoRepo: self.providePhotoRepository())
  }

}
