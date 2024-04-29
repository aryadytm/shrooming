//
//  Page5.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page5: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_5_layer_2")
            
            
            ScrollZoomParallaxObject(
                imageAsset: "page_5_layer_6_layer_2",
                zoomMultiplier: -0.32
            )
            .scaleEffect(x: 2, y: 2)
            
            ScrollMoveParallaxObject(
                imageAsset: "page_5_layer_6_layer_0",
                speedMultiplier: 0.07,
                isVertical: false
            )
            .offset(x: -50)
            
            ScrollMoveParallaxObject(
                imageAsset: "page_5_layer_6_layer_1",
                speedMultiplier: -0.07,
                isVertical: false
            )
            .offset(x: 50)
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page5()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
