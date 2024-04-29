//
//  Page5.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page5: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_5_bg")
                .opacity(0.4)
            
            ScrollZoomParallaxObject(
                imageAsset: "page_5_connection",
                zoomMultiplier: -1,
                startingScale: 2.5
            )
            
            ScrollMoveParallaxObject(
                imageAsset: "page_5_ds2",
                speedMultiplier: 0.1,
                isVertical: false
            )
            .offset(x: -100)
            .clipped()
            
            ScrollMoveParallaxObject(
                imageAsset: "page_5_ds1",
                speedMultiplier: -0.1,
                isVertical: false
            )
            .offset(x: 100)
            .clipped()
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page5()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
