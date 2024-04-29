//
//  Page9Part3.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page9Part3: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_9_sky")
                .opacity(0)
            
            ScrollZoomParallaxObject(imageAsset: "page_9_child2", zoomMultiplier: 0.1)
                .clipped()
            ScrollZoomParallaxObject(imageAsset: "page_9_parents", zoomMultiplier: 0.2)

        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page9Part3()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
