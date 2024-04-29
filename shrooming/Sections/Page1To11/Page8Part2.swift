//
//  Page8Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page8Part2: View {
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
//            ScrollFadeParallaxObjectV2(
//                imageAsset: "page_8_child1",
//                scrollStartPercentage: 0.1,
//                scrollEndPercentage: 0.2,
//                scrollDisappearPercentage: nil
//            )
//            ScrollFadeParallaxObjectV2(
//                imageAsset: "page_8_child2",
//                scrollStartPercentage: 0.2,
//                scrollEndPercentage: 0.1,
//                scrollDisappearPercentage: nil
//            )

//            ScrollFadeParallaxObjectV2(
//                imageAsset: "page_8_child2",
//                startFadeAtScrollPercentage: 0.1,
//                endFadeAtScrollPercentage: 0.2,
//                isOpacityIncreasing: false,
//                startReverseAtScrollPercentage: 0.3,
//                endReverseAtScrollPercentage: 0.4
//            )
            
            ScrollZoomParallaxObject(
                imageAsset: "page_8_cage",
                zoomMultiplier: 0.0
            )
            .offset(x: -25)
            .clipped()
        
        }
        .frame(width: 500)
        .offset(x: -100)
        .scaleEffect(1.5)
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
