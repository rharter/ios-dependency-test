//
//  ViewController.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import UIKit

// Injections specific to classes that can live in the same target can
// be included right next to the code that uses them!
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

class ViewController: UIViewController {
  
  var viewModel: MyViewModel!
  
  @IBOutlet var listView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Immediately after super.viewDidLoad()
    DependencyGraph.shared().inject(self)
    
    self.listView.text = viewModel.photoURLString()
  }

}

