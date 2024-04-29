//
//  Page4Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page4Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_4_bg")
            
            ScrollZoomParallaxObject(
                imageAsset: "page_4_bg",
                zoomMultiplier: -0.15
            )
            .scaleEffect(1.5)
            .clipped()
            
            ScrollZoomParallaxObject(
                imageAsset: "page_4_hand",
                zoomMultiplier: 0.3
            )
            .scaleEffect(1)
            .clipped()
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page4Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
