//
//  Page22.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page22: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_22_bg")
            StaticObject(assetName: "page_22_door_frame")
            StaticObject(assetName: "page_22_smile")
            
            ScrollFadeParallaxObject(imageAsset: "page_22_mood", speedMultiplier: 0.75, isDisappearing: false)
            StaticObject(assetName: "page_22_friends")
            ScrollFadeParallaxObject(imageAsset: "page_22_face", speedMultiplier: 1, isDisappearing: true)
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page22()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
