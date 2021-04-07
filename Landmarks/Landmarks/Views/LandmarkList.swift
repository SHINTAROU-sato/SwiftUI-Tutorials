//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 佐藤晋太朗 on 2021/03/07.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
        @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                                }
                
            ForEach(filteredLandmarks) { landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }
            }
            }
        .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkList()
            LandmarkList()
        }
    }
}