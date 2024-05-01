//
//  StoryPageState.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI
import AVFoundation


struct StoryPageV2: View {
    @State private var opacity: Double = 0
    @State private var isSoundOn: Bool = true
    
    @EnvironmentObject var orientationInfo: OrientationInfo
    @EnvironmentObject var viewModel: PageControllerViewModel
    
    @State private var activeSection: AnyView? = AnyView(AllSections())
    @State private var currentSection = 0
    
    var body: some View {
        ZStack {
            
            ScrollView(showsIndicators: false) {
                VStack {
                    if currentSection == 2 {
                        HStack {
                            Button(action: switchToSectionOne) {
                                Image(systemName: "arrow.left.circle.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                            }
                            .foregroundColor(.white)
                            .opacity(0.5)
                            .offset(y: -100)
                            Spacer()
                        }

                    }
                    
                    activeSection
                        
                    
                    Button(action: resetStory) {
                        Image(systemName: "arrow.counterclockwise.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    .foregroundColor(.white)
                    .opacity(0.5)
                    .padding(.top, 200)
                    
                    if currentSection == 1 {
                        Button(action: switchToSectionTwo) {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                        }
                        .foregroundColor(.white)
                        .opacity(0.5)
                    }
                    if currentSection == 2 {
                        Button(action: switchToSectionOne) {
                            Image(systemName: "arrow.counterclockwise.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                        }
                        .foregroundColor(.white)
                        .opacity(0.5)
                        .offset(y: -300)
                    }

                }
                .padding(.top, 220)
            }
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: toggleSound) {
                        Image(systemName: isSoundOn ? "speaker.wave.2.fill" : "speaker.slash")
                            .scaleEffect(0.5)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                            .padding()
                    }
                    .opacity(0.5)
                }
                Spacer()
            }
        }
        .opacity(opacity)
        .onAppear {
            if isSoundOn {
                viewModel.bgPlayer?.play()
            }
            withAnimation(.easeIn(duration: 2.0)) {
                opacity = 1.0
            }
        }
    }
    
    func toggleSound() {
        isSoundOn.toggle()
        if isSoundOn {
            viewModel.bgPlayer?.play()
        } else {
            viewModel.bgPlayer?.pause()
        }
    }
    
    func resetStory() {
        currentSection = 0
        
        withAnimation {
            activeSection = AnyView(EmptyView())
        }
        withAnimation(.easeInOut(duration: 1.5)) {
            activeSection = AnyView(AllSections())
        }
    }
    
    func switchToSectionOne() {
        currentSection = 1
        activeSection = AnyView(EmptyView())
        withAnimation {
            activeSection = AnyView(SectionOne())
        }
    }
    
    func switchToSectionTwo() {
        currentSection = 2
        activeSection = AnyView(EmptyView())
        withAnimation {
            activeSection = AnyView(SectionTwo())
        }
    }

}


struct AllSections: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    
    var body: some View {
        ZStack {
            LottieView(name: "Hand Scroll", loopMode: .loop)
                .frame(width: 160, height: 160)
                .offset(y: -100)
                .opacity(0.8)
        }
        LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
            ForEach(1...42, id: \.self) { page in
                getPageView(page)
            }
        .padding(.top, 10)
        }
    }
    
    func getPageView(_ page: Int) -> some View {
        switch page {
        case 1: return AnyView(Page1())
        case 2: return AnyView(Page2Part1())
        case 3: return AnyView(Page2Part2())
        case 4: return AnyView(Page2Part3())
        case 5: return AnyView(Page3Part1())
        case 6: return AnyView(Page3Part2())
        case 7: return AnyView(Page4Part1())
        case 8: return AnyView(Page4Part2())
        case 9: return AnyView(Page5())
        case 10: return AnyView(Page6())
        case 11: return AnyView(Page7Part1())
        case 12: return AnyView(Page7Part2())
        case 13: return AnyView(Page8Part1())
        case 14: return AnyView(Page8Part2())
        case 15: return AnyView(Page9Part1())
        case 16: return AnyView(Page9Part2())
        case 17: return AnyView(Page9Part3())
        case 18: return AnyView(Page9Part4())
        case 19: return AnyView(Page10())
        case 20: return AnyView(Page11Part1())
        case 21: return AnyView(Page11Part2())
        case 22: return AnyView(Page11Part3())
        case 23: return AnyView(Page11Part4())
        case 24: return AnyView(Page11Part5())
        case 25: return AnyView(Page12())
        case 26: return AnyView(Page13())
        case 27: return AnyView(Page14())
        case 28: return AnyView(Page15())
        case 29: return AnyView(Page16())
        case 30: return AnyView(Page17())
        case 31: return AnyView(Page18())
        case 32: return AnyView(Page19())
        case 33: return AnyView(Page20())
        case 34: return AnyView(Page21Part1())
        case 35: return AnyView(Page21Part2())
        case 36: return AnyView(Page22())
        case 37: return AnyView(Page23Part1())
        case 38: return AnyView(Page23Part2())
        case 39: return AnyView(Page23Part3())
        case 40: return AnyView(Page24Part1())
        case 41: return AnyView(Page24Part2())
        case 42: return AnyView(Page25())
        default: return AnyView(Text(""))
        }
    }
}
struct SectionOne: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    
    var body: some View {
        ZStack {
            LottieView(name: "Hand Scroll", loopMode: .loop)
                .frame(width: 200, height: 200)
                .offset(y: -100)
        }
        VStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
            ForEach(1...20, id: \.self) { page in
                getPageView(page)
            }
        }

        .padding(.top, 10)
    }
    
    func getPageView(_ page: Int) -> some View {
        switch page {
        case 1: return AnyView(Page1())
        case 2: return AnyView(Page2Part1())
        case 3: return AnyView(Page2Part2())
        case 4: return AnyView(Page2Part3())
        case 5: return AnyView(Page3Part1())
        case 6: return AnyView(Page3Part2())
        case 7: return AnyView(Page4Part1())
        case 8: return AnyView(Page4Part2())
        case 9: return AnyView(Page5())
        case 10: return AnyView(Page6())
        case 11: return AnyView(Page7Part1())
        case 12: return AnyView(Page7Part2())
        case 13: return AnyView(Page8Part1())
        case 14: return AnyView(Page8Part2())
        case 15: return AnyView(Page9Part1())
        case 16: return AnyView(Page9Part2())
        case 17: return AnyView(Page9Part3())
        case 18: return AnyView(Page9Part4())
        case 19: return AnyView(Page10())
        case 20: return AnyView(Page11Part1())
        case 21: return AnyView(Page11Part2())
        case 22: return AnyView(Page11Part3())
        case 23: return AnyView(Page11Part4())
        case 24: return AnyView(Page11Part5())
        case 25: return AnyView(Page12())
        // Define other pages similarly
        default: return AnyView(Text(""))
        }
    }
}

struct SectionTwo: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    
    var body: some View {

        LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
            ForEach(11...34, id: \.self) { page in
                getPageView(page)
            }
        }
    }
        
    func getPageView(_ page: Int) -> some View {
        switch page {
        case 11: return AnyView(Page11Part1())
        case 12: return AnyView(Page11Part2())
        case 13: return AnyView(Page11Part3())
        case 14: return AnyView(Page11Part4())
        case 15: return AnyView(Page11Part5())
        case 16: return AnyView(Page12())
        case 17: return AnyView(Page13())
        case 18: return AnyView(Page14())
        case 19: return AnyView(Page15())
        case 20: return AnyView(Page16())
        case 21: return AnyView(Page17())
        case 22: return AnyView(Page18())
        case 23: return AnyView(Page19())
        case 24: return AnyView(Page20())
        case 25: return AnyView(Page21Part1())
        case 26: return AnyView(Page21Part2())
        case 27: return AnyView(Page22())
        case 28: return AnyView(Page23Part1())
        case 29: return AnyView(Page23Part2())
        case 30: return AnyView(Page23Part3())
        case 31: return AnyView(Page24Part1())
        case 32: return AnyView(Page24Part2())
        case 33: return AnyView(Page25())
            // Ensure that you have an appropriate view for each case
        default: return AnyView(Text(""))
        }
    }
}

struct ArrowButton: View {
    enum Direction {
        case up, down
    }
    
    var direction: Direction
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: direction == .up ? "arrow.left.circle.fill" : "arrow.right.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
        }
        .foregroundColor(.white)
        .opacity(0.5)
    }
}

//
//struct Stories: View {
//    @EnvironmentObject var orientationInfo: OrientationInfo
//
//    var body: some View {
//        LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
//            Page1()
//            Page2Part1()
//            Page2Part2()
//            Page2Part3()
//            Page3Part1()
//            Page3Part2()
//            Page4Part1()
//            Page4Part2()
//            Page5()
//            Page6()
//            Page7Part1()
//            Page7Part2()
//            Page8Part1()
//            Page8Part2()
//            Page9Part1()
//            Page9Part2()
//            Page9Part3()
//            Page9Part4()
//            Page10()
//            Page11Part1()
//            Page11Part2()
//            Page11Part3()
//            Page11Part4()
//            Page11Part5()
//            Page12()
//            Page13()
//            Page14()
//            Page15()
//            Page16()
//            Page17()
//            Page18()
//            Page19()
//            Page20()
//            Page21Part1()
//            Page21Part2()
//            Page22()
//            Page23Part1()
//            Page23Part2()
//            Page23Part3()
//            Page24Part1()
//            Page24Part2()
//            Page25()
//        }
//        .padding(.bottom, !orientationInfo.isLandscape ? 300 : 10)
//        .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
//        .offset(y: orientationInfo.isLandscape ? -2200 : 0)
//        .clipped()
//    }
//}

#Preview {
    StoryPageV2()
        .environmentObject(OrientationInfo())
        .environmentObject(PageControllerViewModel())
}
