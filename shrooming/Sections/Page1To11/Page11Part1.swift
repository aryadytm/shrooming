//
//  Page11Part1.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page11Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_11_bg")
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            
            
            ScrollFadeParallaxObject(imageAsset: "page_11_friends1", speedMultiplier: 1.5, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_11_friends2", speedMultiplier: 1.0, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_11_friends1face", speedMultiplier: 1.5, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_11_friends2face", speedMultiplier: 1.0, isDisappearing: true)
            ScrollFadeParallaxObject(imageAsset: "page_11_self", speedMultiplier: 0.2, isDisappearing: true)
            
            StaticObject(assetName: "page_11_table")
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page11Part1()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
