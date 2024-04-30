//
//  ParallaxUtils.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

let PARALLAX_SCREEN_PERCENTAGE = 0.99
let IMAGE_QUALITY = 0.7

struct StaticObject: View {
    var assetName: String
    
    var body: some View {
        loadImage(named: assetName, withQuality: IMAGE_QUALITY)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ScrollZoomParallaxObject: View {
    let imageAsset: String
    let zoomMultiplier: CGFloat
    let startingScale: CGFloat
    
    init(imageAsset: String, zoomMultiplier: CGFloat, startingScale: CGFloat = 1.0) {
        self.imageAsset = imageAsset
        self.zoomMultiplier = zoomMultiplier
        self.startingScale = startingScale
    }
    
    var body: some View {
        GeometryReader { geometry in
            loadImage(named: imageAsset, withQuality: IMAGE_QUALITY)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(scaleThatChangesWithScroll(geometry: geometry))
//                .clipped()
        }
    }
    
    private func scaleThatChangesWithScroll(geometry: GeometryProxy) -> CGFloat {
        var scale = startingScale
        let yOffset = geometry.frame(in: .global).minY
        let screenHeight = UIScreen.main.bounds.height
        
        // Only scale when the image is within the visible screen area
        if yOffset > -geometry.size.height && yOffset < screenHeight {
            // Start Effect At 75% of Screen Bottom
            let bottomOffset = (screenHeight * PARALLAX_SCREEN_PERCENTAGE) - yOffset - (geometry.size.height / 2)
            
            if bottomOffset > 0 {
                scale = startingScale + (bottomOffset / (500 / zoomMultiplier))
            }
        }
        return scale
    }
}


struct ScrollMoveParallaxObject: View {
    let imageAsset: String
    let speedMultiplier: CGFloat
    let isVertical: Bool
    
    var body: some View {
        GeometryReader { geometry in
            loadImage(named: imageAsset, withQuality: IMAGE_QUALITY)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(x: isVertical ? 0 : calculateOffset(geometry: geometry),
                        y: isVertical ? calculateOffset(geometry: geometry) : 0)
//                .clipped()
        }
    }
    
    private func calculateOffset(geometry: GeometryProxy) -> CGFloat {
        var offset = CGFloat.zero
        let yOffset = geometry.frame(in: .global).minY
        let screenHeight = UIScreen.main.bounds.height
        
        // Only apply parallax effect when the image is within the visible screen area
        if yOffset > -geometry.size.height && yOffset < screenHeight {
            let triggerOffset = screenHeight * PARALLAX_SCREEN_PERCENTAGE
            let relativeOffset = yOffset - triggerOffset
            
            if relativeOffset < 0 {
                offset = -relativeOffset * speedMultiplier
            }
        }
        return offset
    }
}


struct ScrollFadeParallaxObject: View {
    let imageAsset: String
    let speedMultiplier: CGFloat
    let isDisappearing: Bool
    
    var body: some View {
        GeometryReader { geometry in
            loadImage(named: imageAsset, withQuality: IMAGE_QUALITY)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(calculateOpacity(geometry: geometry))
                .clipped()
        }
    }
    
    private func calculateOpacity(geometry: GeometryProxy) -> CGFloat {
        let yOffset = geometry.frame(in: .global).minY
        let screenHeight = UIScreen.main.bounds.height
        let triggerOffset = screenHeight * PARALLAX_SCREEN_PERCENTAGE
        
        // Only adjust opacity within the visible screen area
        if yOffset > -geometry.size.height && yOffset < screenHeight {
            let relativeOffset = yOffset - triggerOffset
            let opacityChange = CGFloat(relativeOffset * speedMultiplier / screenHeight)
            return isDisappearing ? max(0, 1 - abs(opacityChange)) : min(1, abs(opacityChange))
        }
        return 1
    }
}

struct ScrollShakeParallaxObject: View {
    let imageAsset: String
    let shakeStrength: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            loadImage(named: imageAsset, withQuality: IMAGE_QUALITY)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(x: calculateShake(geometry: geometry))
        }
    }
    
    private func calculateShake(geometry: GeometryProxy) -> CGFloat {
        let yOffset = geometry.frame(in: .global).minY
        let screenHeight = UIScreen.main.bounds.height
        
        // Only apply shake effect when the image is within the visible screen area
        if yOffset > -geometry.size.height && yOffset < screenHeight {
            let triggerOffset = screenHeight * PARALLAX_SCREEN_PERCENTAGE
            let relativeOffset = yOffset - triggerOffset
            
            // Apply a sine wave based shake based on the scroll position
            return sin(relativeOffset / 30) * shakeStrength
        }
        return 0
    }
}

struct ScrollRotateParallaxObject: View {
    let imageAsset: String
    let rotationMultiplier: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            loadImage(named: imageAsset, withQuality: IMAGE_QUALITY)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees(calculateRotation(geometry: geometry)))
        }
    }
    
    private func calculateRotation(geometry: GeometryProxy) -> Double {
        let yOffset = geometry.frame(in: .global).minY
        let screenHeight = UIScreen.main.bounds.height
        
        // Only apply rotation effect when the image is within the visible screen area
        if yOffset > -geometry.size.height && yOffset < screenHeight {
            let triggerOffset = screenHeight * PARALLAX_SCREEN_PERCENTAGE
            let relativeOffset = yOffset - triggerOffset
            
            // Calculate the rotation based on the scroll position and multiplier
            return Double(relativeOffset * rotationMultiplier)
        }
        return 0
    }
}
