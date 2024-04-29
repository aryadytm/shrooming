//
//  Page17.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page17: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_17_bg")
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            ScrollZoomParallaxObject(imageAsset: "page_17_light", zoomMultiplier: 0.2)
                .clipped()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            ScrollFadeParallaxObject(imageAsset: "page_17_awake", speedMultiplier: 1, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_17_awake1", speedMultiplier: 1, isDisappearing: false)
            ScrollFadeParallaxObject(imageAsset: "page_17_zoomedpaper", speedMultiplier: 2, isDisappearing: false)
                .offset(x: 2, y: 2)
            ScrollFadeParallaxObject(imageAsset: "page_17_zoomedpaper", speedMultiplier: 2, isDisappearing: false)
                .colorInvert()

        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page17()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
