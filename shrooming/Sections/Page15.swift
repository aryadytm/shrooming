//
//  Page15.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page15: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_15_bg")
            ScrollShakeParallaxObject(imageAsset: "page_15_string", shakeStrength: 4)
            ScrollShakeParallaxObject(imageAsset: "page_15_hand", shakeStrength: 4)
            ScrollZoomParallaxObject(imageAsset: "page_15_girl", zoomMultiplier: 0.01)
                
        }
        .onAppear {
            Shaker.startShaking()
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page15()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
