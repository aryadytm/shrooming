//
//  Page7.swift
//  shrooming
//
//  Created by Arya Adyatma on 29/04/24.
//

import SwiftUI

struct Page7Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_7_brokenbear")
                .opacity(0)
            ScrollZoomParallaxObject(imageAsset: "page_7_brokenbear", zoomMultiplier: 0.5)
        }
    }
}


#Preview {
    ScrollView {
        VStack {
            Page7Part1()
                .padding(.top, 600)
                .padding(.bottom, 800)
        }
    }
}
