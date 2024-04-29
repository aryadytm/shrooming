//
//  Page8.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page8Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_8_bg")
                .opacity(0.5)

            
            StaticObject(assetName: "page_8_light")
            StaticObject(assetName: "page_8_table1")
            StaticObject(assetName: "page_8_child1")
            
            ScrollZoomParallaxObject(
                imageAsset: "page_6_book_left_back",
                zoomMultiplier: 0.3
            )
            .clipped()
            ScrollZoomParallaxObject(
                imageAsset: "page_6_book_left_midle",
                zoomMultiplier: 0.2
            )
            .clipped()
            ScrollZoomParallaxObject(
                imageAsset: "page_6_book_left_front",
                zoomMultiplier: 0.1
            )
            .clipped()
            
            ScrollZoomParallaxObject(
                imageAsset: "page_6_book_right_back",
                zoomMultiplier: 0.3
            )
            .clipped()
            ScrollZoomParallaxObject(
                imageAsset: "page_6_book_right_front",
                zoomMultiplier: 0.2
            )
            .clipped()
            ScrollZoomParallaxObject(
                imageAsset: "page_8_cage",
                zoomMultiplier: 0.2
            )
            .clipped()
            
            ScrollFadeParallaxObject(
                imageAsset: "page_8_overlay1",
                speedMultiplier: 2,
                isDisappearing: false
            )
            ScrollFadeParallaxObject(
                imageAsset: "page_8_overlay2",
                speedMultiplier: 0.4,
                isDisappearing: false
            )
            ScrollFadeParallaxObject(
                imageAsset: "page_8_overlay3",
                speedMultiplier: 0.3,
                isDisappearing: false
            )
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page8Part1()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
