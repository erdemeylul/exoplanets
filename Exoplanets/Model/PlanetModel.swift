//
//  planetModel.swift
//  Exoplanets
//
//  Created by Erdem Senol on 11.03.2021.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Planet: Identifiable {
  var id = UUID()
  var title: String
  var image: String
  var shortDescription: String
  var colors: [Color]
  var color: Color
  var info: [String]
  var longDescription: String  
}
