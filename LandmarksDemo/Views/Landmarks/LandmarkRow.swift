//
//  LandmarkRow.swift
//  LandmarksDemo
//
//  Created by Apurva Jalgaonkar on 13/06/24.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: LandMark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview{
    let landmarks = ModelData().landmarks
     return Group {
         LandmarkRow(landmark: landmarks[0])
         LandmarkRow(landmark: landmarks[1])
     }
}

//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}
