//
//  StoryPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct StoryPage: View {
    @State private var opacity: Double = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 600){
                Page1()
                    .padding(.top, 500)
                Page2Part1()
                Page2Part2()
                Page2Part3()
                Page3Part1()
                Page3Part2()
                Page4Part1()
                Page4Part2()
                Page5()
                Page6()
                    .padding(.bottom, 500)
                
            }
        }
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn(duration: 3.0)) {
                opacity = 1.0
            }
        }
    }
       
}

#Preview {
    StoryPage()
}
