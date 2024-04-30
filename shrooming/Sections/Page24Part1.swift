//
//  Page24Part1.swift
//  shrooming
//
//  Created by Arya Adyatma on 30/04/24.
//

import Foundation
import SwiftUI

struct Page24Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_24_sky")
            
            ScrollZoomParallaxObject(
                imageAsset: "page_24_building_centre",
                zoomMultiplier: 0.3
            )
            .clipped()
            
            ScrollZoomParallaxObject(
                imageAsset: "page_24_building_left",
                zoomMultiplier: 1
            )
            .clipped()
            
            ScrollZoomParallaxObject(
                imageAsset: "page_24_building_right",
                zoomMultiplier: 0.5
            )
            .clipped()
            
            
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page24Part1()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
