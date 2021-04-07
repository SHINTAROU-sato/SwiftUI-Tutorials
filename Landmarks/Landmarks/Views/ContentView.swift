//
//  ContentView.swift
//  Landmarks
//
//  Created by 佐藤晋太朗 on 2021/02/20.
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
