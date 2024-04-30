//
//  Utils.swift
//  shrooming
//
//  Created by Arya Adyatma on 30/04/24.
//

import Foundation
import SwiftUI
import UIKit

extension UIImage {
    func compressed(quality: CGFloat) -> UIImage? {
        guard let data = self.jpegData(compressionQuality: quality) else { return nil }
        return UIImage(data: data)
    }
}

struct CompressedImageView: View {
    let originalImage: UIImage
    var body: some View {
        if let compressedImage = originalImage.compressed(quality: 0.5) {
            Image(uiImage: compressedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
        } else {
            Text("Failed to compress image")
        }
    }
}

func loadImage(named name: String, withQuality quality: CGFloat) -> Image {
    return Image(name)
    guard let uiImage = UIImage(named: name),
          let compressedData = uiImage.jpegData(compressionQuality: quality),
          let compressedImage = UIImage(data: compressedData) else {
        return Image(systemName: "photo") // Fallback image
    }
    return Image(uiImage: compressedImage)
}
