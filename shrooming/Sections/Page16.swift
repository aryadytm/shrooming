//
//  Page16.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page16: View {
    @State private var showSleepImage = true
    
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_16_bg")
            
            
            // Images with crossfade effect
            if showSleepImage {
                StaticObject(assetName: "page_16_bed")
                StaticObject(assetName: "page_16_sleep")
                    .transition(.opacity)
            } else {
                StaticObject(assetName: "page_16_bed1")
                StaticObject(assetName: "page_16_awake")
                    .transition(.opacity)
            }
            
            ScrollShakeParallaxObject(imageAsset: "page_16_alarm_clock", shakeStrength: 3)
            ScrollShakeParallaxObject(imageAsset: "page_16_vibrate", shakeStrength: 3)
            
            ScrollFadeParallaxObject(imageAsset: "page_16_vibrate", speedMultiplier: 0.7, isDisappearing: false)
//            
//            Image(systemName: "hand.tap.fill")
//                .offset(y: 80)
//                .scaleEffect(2.0)
            
            LottieView(name: "Hand Tap", loopMode: .loop)
                .frame(width: 120, height: 120)
                .offset(y: 180)
                .opacity(0.8)
            
        }
        .onTapGesture {
            withAnimation {
                showSleepImage.toggle()
            }
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
