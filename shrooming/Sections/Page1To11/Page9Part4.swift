//
//  Page9Part4.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page9Part4: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_1_sky")
                .opacity(0)
                .scaledToFit()

            ScrollZoomParallaxObject(imageAsset: "page_9_study", zoomMultiplier: 0)
                .scaledToFill()
                .clipped()
            
//            ScrollZoomParallaxObject(imageAsset: "page_9_light", zoomMultiplier: 0)
//                .clipped()
            
            ScrollShakeParallaxObject(imageAsset: "page_9_light", shakeStrength: 8)
                .offset(x: 50)
                .clipped()
            
        }
        .clipped()
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page9Part4()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
