//
//  Page14.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page14: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_14_bg")
            ScrollMoveParallaxObject(imageAsset: "page_14_string", speedMultiplier: 0.14, isVertical: true)
                .offset(y: -150)
                .clipped()
            ScrollRotateParallaxObject(imageAsset: "page_14_girl1", rotationMultiplier: -0.03)
            StaticObject(assetName: "page_14_falleffect")

        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page14()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
