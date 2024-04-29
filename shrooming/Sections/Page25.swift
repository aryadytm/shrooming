//
//  Page25.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page25: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            StaticObject(assetName: "page_2_window_train")
                .opacity(0)
            
            ScrollZoomParallaxObject(imageAsset: "page_25_bearheal", zoomMultiplier: 0.7)
                .offset(x: 30)
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page25()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
