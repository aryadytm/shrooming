//
//  Page24.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page24Part2: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            ScrollMoveParallaxObject(
                imageAsset: "page_24_view",
                speedMultiplier: -0.2,
                isVertical: false
            )
            .offset(x: 130, y: -2)
            .scaleEffect(2.0)
            .clipped()
            
            StaticObject(assetName: "page_2_window_train")
            
            Rectangle()
                .foregroundColor(.yellow)
                .opacity(0.075)
            
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            StaticObject(assetName: "page_2_reflection")
            
            StaticObject(assetName: "page_2_speed")
            
            ScrollMoveParallaxObject(
                imageAsset: "page_2_hp",
                speedMultiplier: -0.13,
                isVertical: true
            )
            .offset(y: 125)
            .clipped()
        }
        .onAppear {
            Shaker.startShaking(duration: 3.0)
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page24Part2()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
