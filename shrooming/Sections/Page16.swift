//
//  Page16.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page16: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_16_bg")
            StaticObject(assetName: "page_16_bed")
            
            ScrollFadeParallaxObject(imageAsset: "page_16_sleep", speedMultiplier: 1.0, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_16_awake", speedMultiplier: 0.7, isDisappearing: false)
            

            ScrollShakeParallaxObject(imageAsset: "page_16_alarm_clock", shakeStrength: 3)
            ScrollShakeParallaxObject(imageAsset: "page_16_vibrate", shakeStrength: 3)
            
            ScrollFadeParallaxObject(imageAsset: "page_16_vibrate", speedMultiplier: 0.7, isDisappearing: false)
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page16()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
