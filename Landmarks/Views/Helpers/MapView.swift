//
//  MapView.swift
//  Landmarks
//
//  Created by Karol Moroz on 04/06/2022.
//

import MapKit
import SwiftUI

struct MapView: View {
  var coordinate: CLLocationCoordinate2D
  @State private var region = MKCoordinateRegion()

  private func setRegion(_ coordinate: CLLocationCoordinate2D) {
    region = MKCoordinateRegion(
      center: coordinate,
      span: MKCoordinateSpan(
        latitudeDelta: 0.2, longitudeDelta: 0.2
      )
    )
  }

  var body: some View {
    Map(coordinateRegion: $region)
      .onAppear {
        setRegion(coordinate)
      }
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(
      coordinate: CLLocationCoordinate2D(
        latitude: 34.011_286, longitude: -116.166_868
      )
    )
  }
}
