//
//  Page23Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page23Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_23_bg")
                .opacity(0)
                .background(.white)
//            StaticObject(assetName: "page_23_door_frame")
//            ScrollZoomParallaxObject(imageAsset: "page_23_girl1", zoomMultiplier: 0.2)
//                .clipped()
            ScrollFadeParallaxObject(imageAsset: "page_23_girl1", speedMultiplier: 0.7, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_23_girl3", speedMultiplier: 1.0, isDisappearing: false)
            ScrollFadeParallaxObject(imageAsset: "page_23_mushroom1", speedMultiplier: 1.0, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_23_mushroom2", speedMultiplier: 1.0, isDisappearing: false)
            ScrollZoomParallaxObject(imageAsset: "page_23_moodyellow", zoomMultiplier: 0.2)
                .clipped()

        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page23Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
