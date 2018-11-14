//
//  ViewController.swift
//  DependencyTest
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import UIKit

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

