//
//  Page2Part3.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page2Part3: View {
    var body: some View {
        ZStack(alignment: .center) {
            // TODO: Pinch Effect
            ScrollMoveParallaxObject(
                imageAsset: "page_2_layer_1",
                speedMultiplier: -0.2,
                isVertical: false
            )
            .offset(x: 130)
            .clipped()
            
            StaticObject(assetName: "page_2_window_train")
                        
            StaticObject(assetName: "page_2_speed")
                .background(.white)
                .opacity(0.2)
            
            StaticObject(assetName: "page_2_gameboy")
            
            ScrollZoomParallaxObject(imageAsset: "page_2_doodle", zoomMultiplier: 0.5)
                .scaleEffect(0.85)
                .clipped()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)

            

        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page2Part3()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
