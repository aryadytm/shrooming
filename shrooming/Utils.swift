//
//  Utils.swift
//  shrooming
//
//  Created by Arya Adyatma on 30/04/24.
//

import Foundation
import SwiftUI
import UIKit


struct LazyImage: View {
    @State private var image: UIImage?
    let imageName: String
    
    var body: some View {
        Group {
            if let image = image {
                Image(uiImage: image)
            } else {
                Image(systemName: "globe")
            }
        }
        .onAppear {
            loadImage()
        }
        .onDisappear {
            image = nil
        }
    }
    
    private func loadImage() {
        if let img = UIImage(named: imageName) {
            image = img
        }
    }
}

func loadImage(named name: String, withQuality: Double) -> Image {
    guard let uiImage = UIImage(named: name) else {
        return Image(name)
    }
    return Image(uiImage: uiImage)
}

struct Shaker {
    static func startShaking(duration: TimeInterval = 5.0, interval: TimeInterval = 0.1) {
        let totalShakes = Int(duration / interval)
        var shakes = 0
        Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { timer in
            if shakes < totalShakes {
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.error)
                shakes += 1
            } else {
                timer.invalidate()
            }
        }
    }
}
