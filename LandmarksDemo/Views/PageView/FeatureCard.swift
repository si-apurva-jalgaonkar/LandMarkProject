//
//  FeatureCard.swift
//  LandmarksDemo
//
//  Created by Apurva Jalgaonkar on 18/06/24.
//

import SwiftUI

struct FeatureCard: View {
    
    var landmark: LandMark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverLay(landmark: landmark)
            }
    }
}

struct TextOverLay: View {
    
    var landmark: LandMark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}


#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3/2, contentMode: .fit)
}
