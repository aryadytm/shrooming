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
            
            StaticObject(assetName: "page_2_layer_8_layer_0")
//            StaticObject(assetName: "page_2_layer_8_layer_1")
//            StaticObject(assetName: "page_2_layer_8_layer_2")
            ScrollZoomParallaxObject(
                imageAsset: "page_2_layer_8_layer_1",
                zoomMultiplier: 0.15
            )
            ScrollZoomParallaxObject(
                imageAsset: "page_2_layer_8_layer_2",
                zoomMultiplier: 0.15
            )
            ScrollZoomParallaxObject(
                imageAsset: "page_2_layer_8_layer_3",
                zoomMultiplier: 0.3
            )
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page2Part2()
                .padding(.top, 500)
                .padding(.bottom, 800)
            Page2Part1()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
