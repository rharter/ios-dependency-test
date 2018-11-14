//
//  DebugApi.swift
//  DependencyTest Debug
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

class DebugApi: Api {
  private let baseURL: BaseURL
  
  init(baseURL: BaseURL) {
    self.baseURL = baseURL
  }
  
  func getPhotoUrls() -> [URL] {
    return [
      self.baseURL.appendingPathComponent("photo1.jpeg"),
      self.baseURL.appendingPathComponent("photo2.jpeg"),
      self.baseURL.appendingPathComponent("photo3.jpeg"),
      self.baseURL.appendingPathComponent("photo4.jpeg"),
      self.baseURL.appendingPathComponent("photo5.jpeg")
    ]
  }
}
