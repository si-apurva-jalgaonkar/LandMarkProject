//
//  CategoryItem.swift
//  LandmarksDemo
//
//  Created by Apurva Jalgaonkar on 17/06/24.
//

import SwiftUI

struct CategoryItem: View {
    
    var landmark: LandMark
    
    var body: some View {
        
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.callout)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
