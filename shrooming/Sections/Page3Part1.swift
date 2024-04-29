//
//  Page4.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page3Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_3_layer_0")

            ScrollZoomParallaxObject(
                imageAsset: "page_3_layer_1",
                zoomMultiplier: 0.3
            )
            .opacity(1)
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page3Part1()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
