//
//  Page3.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page2Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            // TODO: Pinch Effect
            
            ScrollMoveParallaxObject(
                imageAsset: "page_2_layer_1",
                speedMultiplier: -0.2,
                isVertical: false
            )
            .offset(x: 130)
            
            StaticObject(assetName: "page_2_window_train")
            
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            
            StaticObject(assetName: "page_2_speed")
            StaticObject(assetName: "page_2_hp")
            
            ScrollZoomParallaxObject(imageAsset: "page_2_transition", zoomMultiplier: 20)
                .scaleEffect(0.1)
                .clipped()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page2Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
