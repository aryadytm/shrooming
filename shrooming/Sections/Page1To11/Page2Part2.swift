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
                    .scaleEffect(0.1)
                    .opacity(0.25)
                    .offset(x: -15)
            }
            .clipped()

            // Pinch-to-zoom StaticObject
            StaticObject(assetName: "page_2_transition")
                .opacity(0.8)
                .scaleEffect(scale) // Apply dynamic scale
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            withAnimation(.easeOut(duration: 1.0)) {
                                // Only enlarge if the pinch gesture scale is greater than current scale
                                if value > 1 {
                                    self.scale = 10.0
                                } else {
                                    self.scale = 0.1 // Reset to minimum scale if pinch-out
                                }
                            }
                        }
                        .onEnded { value in
 
                        }
                )
                .offset(x: -15)
                .clipped()
            
            Image(systemName: "hand.draw")
                .offset(y: 80)
                .scaleEffect(2.0)
        }
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
