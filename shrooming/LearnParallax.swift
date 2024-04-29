//
//  LearnParallax.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct LearnParallax: View {
    var body: some View {
        ScrollView {
            VStack {
                GeometryReader { geometry in
                    Image("page_1_layer_3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(scaleThatChangesWithScroll(geometry: geometry))
                }
                .frame(height: 300) // Adjust height as needed
                .padding(.top, 500)
                
                
                GeometryReader { geometry in
                    Image("page_1_layer_3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(scaleThatChangesWithScroll(geometry: geometry))
                        .clipped()
                }
                .frame(height: 300) // Adjust height as needed
                .background(.red)
                .padding(.top, 200)
                .padding(.bottom, 1000)
            }
        }
    }
    
    private func scaleThatChangesWithScroll(geometry: GeometryProxy) -> CGFloat {
        var scale = 1.0
        let yOffset = geometry.frame(in: .global).minY
        let screenHeight = UIScreen.main.bounds.height * 0.8 // 90% of the screen height
        
        // Calculate the offset from 90% bottom of the screen
        let bottomOffset = screenHeight - yOffset - (geometry.size.height / 2)
        
        if bottomOffset > 0 {
            scale = 1 + abs(bottomOffset / 500)
        }
        
        return scale
    }
}

#Preview {
    LearnParallax()
}
