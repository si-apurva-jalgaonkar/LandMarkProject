//
//  RotatedBadgeSymbol.swift
//  LandmarksDemo
//
//  Created by Apurva Jalgaonkar on 13/06/24.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
