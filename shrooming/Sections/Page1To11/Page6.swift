//
//  Page6.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page6: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_6_bg")
                .opacity(0.5)
            StaticObject(assetName: "page_6_table")
            StaticObject(assetName: "page_6_hug")
            StaticObject(assetName: "page_6_face sketch")
            
            ScrollShakeParallaxObject(
                imageAsset: "page_6_face_sketch",
                shakeStrength: 3
            )
            
            ScrollMoveParallaxObject(
                imageAsset: "page_6_effect",
                speedMultiplier: 0.07,
                isVertical: true
            )
            .offset(y: -60)
            .clipped()
            
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
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page6()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
