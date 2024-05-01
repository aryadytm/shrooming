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
                speedMultiplier: -0.2,
                isVertical: false
            )
            .offset(x: 130)
            .clipped()
            
            StaticObject(assetName: "page_2_window_train")
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_speed")
            
            ScrollMoveParallaxObject(
                imageAsset: "page_2_hp",
                speedMultiplier: -0.13,
                isVertical: true
            )
            .offset(y: 125)
            .clipped()
            

        }
        .onAppear {
            Shaker.startShaking()
        }
    }
}
