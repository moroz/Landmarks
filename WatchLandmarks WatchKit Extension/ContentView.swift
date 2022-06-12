//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Karol Moroz on 12/06/2022.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(ModelData())
  }
}
