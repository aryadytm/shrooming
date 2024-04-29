//
//  Page19.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page19: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_19_bg")
            ScrollZoomParallaxObject(imageAsset: "page_19_string", zoomMultiplier: -0.2)
                .offset(y: -50)
                .clipped()

            ScrollZoomParallaxObject(imageAsset: "page_19_hand", zoomMultiplier: -0.2)
                .offset(y: -50)
                .clipped()

            ScrollZoomParallaxObject(imageAsset: "page_19_girl", zoomMultiplier: 0.5)
                .clipped()
            
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page19()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
