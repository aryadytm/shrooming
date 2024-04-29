//
//  Page23Part1.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page23Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_23_bg")
            StaticObject(assetName: "page_23_door_frame")
            ScrollZoomParallaxObject(imageAsset: "page_23_girl", zoomMultiplier: 0.2)
                .clipped()
            ScrollZoomParallaxObject(imageAsset: "page_23_moodyellow", zoomMultiplier: 0.2)
                .clipped()
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page23Part1()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
