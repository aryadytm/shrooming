//
//  Page13.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page13: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            ScrollZoomParallaxObject(imageAsset: "page_13_bg", zoomMultiplier: 0.4)
                .clipped()
                .opacity(0.5)
            ScrollZoomParallaxObject(imageAsset: "page_13_reflection", zoomMultiplier: 0.4)
            ScrollZoomParallaxObject(imageAsset: "page_13_reflection", zoomMultiplier: 0.4)
            ScrollZoomParallaxObject(imageAsset: "page_13_reflection", zoomMultiplier: 0.4)
            ScrollZoomParallaxObject(imageAsset: "page_13_reflection", zoomMultiplier: 0.4)
            ScrollZoomParallaxObject(imageAsset: "page_13_reflection", zoomMultiplier: 0.4)
            StaticObject(assetName: "page_13_blackoverlay")
            
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page13()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
