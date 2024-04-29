//
//  Page2.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page2Part1: View {
    var body: some View {
        ZStack(alignment: .center) {

            ScrollMoveParallaxObject(
                imageAsset: "page_2_layer_1",
                speedMultiplier: 0.11,
                isVertical: false
            )
            .clipped()
            
            StaticObject(assetName: "page_2_layer_2")
            
            StaticObject(assetName: "page_2_layer_3_layer_9")
            StaticObject(assetName: "page_2_layer_3_layer_10")
            
            ForEach([0, 1], id: \.self) { i in
                // Your code for each item here
                ScrollZoomParallaxObject(
                    imageAsset: "page_2_layer_3_layer_\(i)",
                    zoomMultiplier: 0.4
                )
                .clipped()
            }            
            
            ForEach([3, 4, 5, 6, 7], id: \.self) { i in
                // Your code for each item here
                ScrollMoveParallaxObject(
                    imageAsset: "page_2_layer_3_layer_\(i)",
                    speedMultiplier: -0.1,
                    isVertical: true
                )
                .offset(y: 75)
                .clipped()
            }
            

        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page2Part1()
                .padding(.top, 500)
                .padding(.bottom, 800)
            Page2Part1()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
