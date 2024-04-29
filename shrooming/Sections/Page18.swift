//
//  Page18.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page18: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_18_bg")
            ScrollFadeParallaxObject(imageAsset: "page_18_paper", speedMultiplier: 1, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_18_ripped", speedMultiplier: 0.5, isDisappearing: false)
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page18()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
