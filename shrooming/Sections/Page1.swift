import SwiftUI

struct Page1: View {
        var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_1_layer_1")

            ScrollZoomParallaxObject(
                imageAsset: "page_1_layer_3",
                zoomMultiplier: 0.3
            )
            .clipped()
            
            ScrollZoomParallaxObject(
                imageAsset: "page_1_layer_4",
                zoomMultiplier: 1
            )
            .clipped()
            
            ScrollZoomParallaxObject(
                imageAsset: "page_1_layer_5",
                zoomMultiplier: 0.5
            )
            .clipped()
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page1()
                .padding(.top, 500)
                .padding(.bottom, 800)
            Page1()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
