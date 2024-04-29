//
//  Page7Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page7Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_7_bg")
            ScrollZoomParallaxObject(imageAsset: "page_7_sketch", zoomMultiplier: 0.03)
            ScrollZoomParallaxObject(imageAsset: "page_7_hand", zoomMultiplier: 0.1)
        }
    }
}


#Preview {
    ScrollView {
        VStack {
            Page7Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
