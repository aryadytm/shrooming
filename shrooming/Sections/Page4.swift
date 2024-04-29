//
//  Page4.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page4: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_4_layer_1")
            
            ScrollZoomParallaxObject(
                imageAsset: "page_4_layer_7",
                zoomMultiplier: 0.3
            )
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page4()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
