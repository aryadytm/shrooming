//
//  Page21Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page21Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_21_bg")
            
            ScrollZoomParallaxObject(imageAsset: "page_21_handzoom", zoomMultiplier: 0.2)
                .clipped()
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page21Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
