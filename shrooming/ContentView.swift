//
//  ContentView.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI
import Combine
import UIKit

struct ContentView: View {
    var body: some View {
        PageController()
            .environmentObject(OrientationInfo())
//            .background(.bgcolor)
    }
}


class OrientationInfo: ObservableObject {
    @Published var isLandscape: Bool = UIDevice.current.orientation.isLandscape
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
            .map { _ in UIDevice.current.orientation.isLandscape }
            .assign(to: \.isLandscape, on: self)
            .store(in: &cancellables)
    }
}

#Preview {
    ContentView()
}

