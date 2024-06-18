//
//  LandmarkList.swift
//  LandmarksDemo
//
//  Created by Apurva Jalgaonkar on 13/06/24.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [LandMark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView {
            
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                
                ForEach(filteredLandmarks) { landmark in
                    
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("LandMarks")
        } detail: {
            Text("Select a landmark")
        }
       
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
