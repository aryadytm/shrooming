//
//  Page21.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page21Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_21_bg")            
        
            
            ScrollFadeParallaxObject(imageAsset: "page_21_blackoverlay", speedMultiplier: 0.5, isDisappearing: true)
            
            ScrollFadeParallaxObject(imageAsset: "page_21_scary", speedMultiplier: 1.0, isDisappearing: true)
            
            ScrollFadeParallaxObject(imageAsset: "page_21_hand", speedMultiplier: 0.1, isDisappearing: true)
            
//            ScrollFadeParallaxObject(imageAsset: "page_21_handzoom", speedMultiplier: 1.0, isDisappearing: false)
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page21Part1()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
