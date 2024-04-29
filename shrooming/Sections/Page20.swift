//
//  Page20.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page20: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_20_bg_bw")
                .opacity(0)
            
            ScrollFadeParallaxObject(imageAsset: "page_20_bg_bw", speedMultiplier: 0.7, isDisappearing: true)
            
            ScrollFadeParallaxObject(imageAsset: "page_20_bg_color", speedMultiplier: 1.0, isDisappearing: false)
            
            ScrollFadeParallaxObject(imageAsset: "page_20_girl1", speedMultiplier: 0.7, isDisappearing: true)
            
            ScrollFadeParallaxObject(imageAsset: "page_20_girl3", speedMultiplier: 0.7, isDisappearing: false)
            
            ScrollFadeParallaxObject(imageAsset: "page_20_mirror1", speedMultiplier: 0.7, isDisappearing: true)
            
            ScrollFadeParallaxObject(imageAsset: "page_20_mirror3", speedMultiplier: 0.7, isDisappearing: false)
            
            ScrollFadeParallaxObject(imageAsset: "page_20_sparkling", speedMultiplier: 0.7, isDisappearing: false)
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page20()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
