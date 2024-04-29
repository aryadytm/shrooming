//
//  Page8Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page8Part2: View {
    var body: some View {
        Page8Part2View()
            .scaleEffect(1.3, anchor: .bottomTrailing)
            .clipped()
    }
}

struct Page8Part2View: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_8_bg")
                .opacity(0.5)
            
            StaticObject(assetName: "page_8_light")
            StaticObject(assetName: "page_8_table1")
            
            ScrollFadeParallaxObject(
                imageAsset: "page_8_child1",
                speedMultiplier: 1,
                isDisappearing: true
            )
            ScrollFadeParallaxObject(
                imageAsset: "page_8_child2",
                speedMultiplier: 0.5,
                isDisappearing: false
            )
            
            ScrollZoomParallaxObject(
                imageAsset: "page_8_cage",
                zoomMultiplier: 0.1,
                startingScale: 0.8
            )
            .offset(x: 34, y: 34)
            .clipped()
            
        }
        .scaleEffect(1)
    }
}

#Preview {
    ScrollView {
        VStack {
            Page8Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
