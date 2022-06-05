//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Karol Moroz on 05/06/2022.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView {
      List(landmarks) { landmark in
        NavigationLink {
          LandmarkDetail(landmark: landmark)
        } label: {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}