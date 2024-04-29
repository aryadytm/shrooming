//
//  Page11Part3.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page11Part3: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "blackover")
            ScrollZoomParallaxObject(imageAsset: "page_11_eat", zoomMultiplier: 0.01)
                .clipped()
            ScrollMoveParallaxObject(imageAsset: "page_11_eathand", speedMultiplier: -0.1, isVertical: true)
                .offset(y: 99)
                .clipped()
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page11Part3()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
