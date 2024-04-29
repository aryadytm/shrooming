//
//  Page11Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page11Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_11_blackoverlay")
            ScrollZoomParallaxObject(imageAsset: "page_11_self1", zoomMultiplier: 0.2)
                .clipped()
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page11Part2()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
