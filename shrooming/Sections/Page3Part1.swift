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
            
            StaticObject(assetName: "page_3_bg")
                .opacity(0.4)

            ScrollFadeParallaxObject(
                imageAsset: "page_3_child",
                speedMultiplier: 0.9,
                isDisappearing: true
            )
            ScrollFadeParallaxObject(
                imageAsset: "page_3_bear_transition",
                speedMultiplier: 0.8,
                isDisappearing: false
            )
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page3Part1()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
