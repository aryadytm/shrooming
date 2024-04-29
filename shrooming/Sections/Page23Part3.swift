//
//  Page23Part3.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page23Part3: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_23_bg")
                .opacity(0)
                .background(.white)
            ScrollFadeParallaxObject(imageAsset: "page_23_moodpink", speedMultiplier: 2.0, isDisappearing: false)
            ScrollFadeParallaxObject(imageAsset: "page_23_girl3", speedMultiplier: 5.0, isDisappearing: false)
            ScrollZoomParallaxObject(imageAsset: "page_23_moodyellow", zoomMultiplier: 0.2)
                .clipped()
            ScrollFadeParallaxObject(imageAsset: "page_23_moodpink", speedMultiplier: 2.0, isDisappearing: false)
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page23Part3()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
