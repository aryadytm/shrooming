//
//  Page11Part5.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page11Part5: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_11_blackoverlay")
            ScrollZoomParallaxObject(imageAsset: "page_11_sigh1", zoomMultiplier: 0.01)
                .clipped()
            ScrollZoomParallaxObject(imageAsset: "page_11_sighbreath", zoomMultiplier: 0.3)
                .clipped()
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page11Part5()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
