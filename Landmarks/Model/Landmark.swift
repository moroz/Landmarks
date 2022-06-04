//
//  Landmark.swift
//  Landmarks
//
//  Created by Karol Moroz on 05/06/2022.
//

import Foundation

struct Landmark: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String

  private var imageName: String
  var image: Image {
    Image(imageName)
  }

  private var coordinates: Coordinates

  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude
    )
  }

  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
}
