//
//  Page10.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page10: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            ScrollZoomParallaxObject(imageAsset: "page_10_bg", zoomMultiplier: 0.4)
                .clipped()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            StaticObject(assetName: "page_10_bicycle")
            
            
        }
        
    }
}

#Preview {
    ScrollView {
        VStack {
            Page10()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
