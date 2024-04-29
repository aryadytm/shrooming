//
//  Page3Part2.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page3Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_3_1_layer_1")
            
            ScrollZoomParallaxObject(
                imageAsset: "page_3_1_layer_10",
                zoomMultiplier: 0.3
            )
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page3Part2()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
