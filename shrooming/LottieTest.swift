//
//  LottieTest.swift
//  shrooming
//
//  Created by Arya Adyatma on 30/04/24.
//

import SwiftUI

struct LottieTest: View {
    @State var isAppear: Bool = true
    
    var body: some View {
            ZStack {
                ScrollView {
                    Text("Test")
                    Text("Test")
                    Text("Test")
                    
                }
                if isAppear {
                    
                    Color.black
                        .opacity(0.4)
                    LottieView(name: "Hand Scroll", loopMode: .loop)
                        .scaleEffect(0.7)
                }
            }
        


    }
}

#Preview {
    LottieTest()
}
