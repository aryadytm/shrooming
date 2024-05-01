//
//  Page9Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page9Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_1_sky")
                .scaledToFit()
                .opacity(0)
            
            ScrollZoomParallaxObject(imageAsset: "page_9_child1", zoomMultiplier: 0.3)
                .clipped()
            

        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page9Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
