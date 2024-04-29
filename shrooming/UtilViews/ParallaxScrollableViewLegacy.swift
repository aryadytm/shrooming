//
//  ParallaxScrollablePreview.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct ParallaxScrollableViewLegacy<Content: View>: View {
    @ViewBuilder let content: (Binding<CGFloat>) -> Content
    @State private var scrollOffset: CGFloat = 0
    
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                Color.clear.preference(key: ScrollOffsetKey.self, value: geometry.frame(in: .global).minY)
            }
            .frame(height: 0)
            
            content($scrollOffset)
            
        }
        .coordinateSpace(name: "scrollView")
        .onPreferenceChange(ScrollOffsetKey.self) { value in
            self.scrollOffset = value
//            print(self.scrollOffset)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ScrollOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}

// Parallax Object: Scroll Zoom
struct ScrollZoomParallaxObject: View {
    let imageAsset: String
    let zoomMultiplier: CGFloat
    
    @Binding var scrollOffset: CGFloat
    
    @State private var geometryY = 0.0
    @State private var localScrollOffset = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Image(imageAsset)
                .resizable()
                .scaledToFill()
                .scaleEffect(computeScaleEffect(geometry: geometry))
                .animation(.easeInOut, value: scrollOffset)
                .onAppear {
                    geometryY = geometry.frame(in: .global).minY
                }
        }
    }
    
    private func computeScaleEffect(geometry: GeometryProxy) -> CGFloat {
        let frame = geometry.frame(in: .global)
        let height = geometry.size.height
        let minY = frame.minY - scrollOffset
        let maxY = frame.maxY - scrollOffset
        
        print(frame.minY)
        
        let screenHeight = UIScreen.main.bounds.height
        let isVisible = (minY < screenHeight && maxY > 0)
        
        if isVisible {
            let visiblePart = max(0, min(screenHeight, maxY)) - max(0, minY)
            let visibilityPercentage = visiblePart / height
            let scale = 1 + ((visibilityPercentage - 0.5) * 2 * zoomMultiplier * 10)
//            print("\(Date()) Visible", visibilityPercentage)
//            print("\(Date()) Visible", visibilityPercentage)
            return scale
        } else {
            print("Invisible")
            return 1
        }
    }
}


#Preview {
    ParallaxScrollableViewLegacy { scrollOffset in
        VStack {
            Page1(scrollOffset: scrollOffset)
                .padding(.top, 50)
                .padding(.bottom, 100)
//            Page1(scrollOffset: scrollOffset)
//                .padding(.top, 50)
//                .padding(.bottom, 2000)
            Page1(scrollOffset: scrollOffset)
                .padding(.top, 500)
                .padding(.bottom, 2000)
        }
    }
}
