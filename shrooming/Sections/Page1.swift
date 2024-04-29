//
//  Page2.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct Page1: View {
    @State private var scrollOffset: CGFloat = 0

    var body: some View {
        ScrollView(showsIndicators: false) {
            Image("ballz")
                .resizable()
                .position(x: 0, y: 0)
                .frame(width: 0, height: 50)
            
            GeometryReader { geometry in
                Color.clear.preference(key: ScrollOffsetKey.self, value: geometry.frame(in: .global).minY)
            }
            .frame(height: 0)
            
            ZStack(alignment: .center) {
                Image("person 1")
                    .resizable()
                    .scaledToFit()
                    .background(Color.green)
                
                
                ScrollZoomParallaxObject(
                    imageAsset: "ballz",
                    xPosition: 0,
                    yPosition: 0,
                    zoomMultiplier: 0.001,
                    scrollOffset: $scrollOffset
                )
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
            }
            .padding(.top, 100)
            .padding(.bottom, 800)
        }
        .coordinateSpace(name: "scrollView")
        .onPreferenceChange(ScrollOffsetKey.self) { value in
            self.scrollOffset = value
            print(self.scrollOffset)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ScrollZoomParallaxObject: View {
    let imageAsset: String
    let xPosition: CGFloat
    let yPosition: CGFloat
    let zoomMultiplier: CGFloat
    
    @Binding var scrollOffset: CGFloat
    
    var body: some View {
        Image(imageAsset)
            .resizable()
            .scaledToFill()
            .scaleEffect(1 + (scrollOffset * -zoomMultiplier))
            .position(x: xPosition, y: yPosition)
            .animation(.easeInOut, value: scrollOffset)
    }
}

// PreferenceKey for tracking the scroll offset
struct ScrollOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}


#Preview {
    Page1()
}
