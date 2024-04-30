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
            
            StaticObject(assetName: "page_3_bg")
                .opacity(0)
            
            ScrollZoomParallaxObject(
                imageAsset: "page_3_freshbear",
                zoomMultiplier: 0.3
            )
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page3Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
