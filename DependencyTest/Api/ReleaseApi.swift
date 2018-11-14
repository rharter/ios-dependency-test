//
//  ReleaseApi.swift
//  DependencyTest Release
//
//  Created by Ryan Harter on 11/14/18.
//  Copyright © 2018 Analog Ocean. All rights reserved.
//

import Foundation

class ReleaseApi: Api {
  private let baseURL: BaseURL = URL(string: "https://production.api.com/")!
  
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
