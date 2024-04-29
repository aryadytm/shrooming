//
//  StoryPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct StoryPage: View {
    @State private var opacity: Double = 0
    @State private var isLandscape: Bool = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: !isLandscape ? 600 : 100){
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
                Page7Part1()
                Page7Part2()
                Page8Part1()
                Page8Part2()
                Page9Part1()
                Page9Part2()
                Page9Part3()
                Page9Part4()
                Page10()
                Page11Part1()
                Page11Part2()
                Page11Part3()
                Page11Part4()
                Page11Part5()
                Page12()
                Page13()
                Page14()
                Page15()
                Page16()
                Page17()
                Page18()
                Page19()
                Page20()
                Page21Part1()
                Page21Part2()
                Page22()
                Page23Part1()
                Page23Part2()
                Page23Part3()
                Page24()
                Page25()
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
