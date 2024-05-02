//
//  Page3.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page2Part2: View {
    @State private var scale: CGFloat = 0.1 // Start with the smallest size
    
    var body: some View {
        ZStack(alignment: .center) {
            
            ScrollMoveParallaxObject(
                imageAsset: "page_2_layer_1",
                speedMultiplier: -0.2,
                isVertical: false
            )
            .offset(x: 130)
            .clipped()
            
            StaticObject(assetName: "page_2_window_train")
            
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            
            StaticObject(assetName: "page_2_speed")
            StaticObject(assetName: "page_2_hp")
            

            
            ZStack {
                ScrollZoomParallaxObject(
                    imageAsset: "page_2_transition", 
                    zoomMultiplier: 25
                )
                    .scaleEffect(0.06)
                    .opacity(0.25)
                    .offset(x: -15)
            }
            .clipped()

            // Pinch-to-zoom StaticObject
            StaticObject(assetName: "page_2_transition")
                .opacity(0.8)
                .scaleEffect(scale) // Apply dynamic scale
                .offset(x: -15)
                .clipped()
            
//            Image(systemName: "hand.draw")
//                .offset(y: 80)
//                .scaleEffect(2.0)
            
            LottieView(name: "Hand Pinch", loopMode: .loop)
                .frame(width: 120, height: 120)
                .offset(y: 180)
                .opacity(0.8)
        }
        .gesture(
            MagnificationGesture()
                .onChanged { value in
                    if value > 1 {
                        withAnimation(.easeOut(duration: 1.0)) {
                            self.scale = 15.0
                        }
                    } else {
                        withAnimation(.easeOut(duration: 1.0)) {
                            self.scale = 0.1
                        }
                    }
                    
                }
                .onEnded { value in
                    
                }
        )
    }
}

#Preview {
    ScrollView {
        VStack {
            Page2Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
