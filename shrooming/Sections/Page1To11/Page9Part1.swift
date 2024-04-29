//
//  Page9Part1.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page9Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_9_sky")
            ScrollZoomParallaxObject(imageAsset: "page_9_bird", zoomMultiplier: 0.3)
                .offset(x: -50, y: 50)

            StaticObject(assetName: "page_9_window2")
                .clipped()
        }

    }
}

#Preview {
    ScrollView {
        VStack {
            Page9Part1()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
