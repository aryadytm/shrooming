//
//  StoryPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//
// TODO:
//
// X Ada SFX wind" sebelum mulai musik
// CANCELLED Lagu mulai di halaman suggestion
// X Volume pake coret
// X Boneka no bg
// X Ortu efek shake
// X Alarm pake shake
//

import SwiftUI
import AVFoundation


struct StoryPage: View {
    @State private var opacity: Double = 0
    @State private var isSoundOn: Bool = true
    @State private var currentSection: Int = 1 // 1 for first section, 2 for second section
    @EnvironmentObject var orientationInfo: OrientationInfo
    @EnvironmentObject var viewModel: PageControllerViewModel
    
    init() {
    }
    
    var body: some View {
        ZStack {

            if currentSection == 1 {
                SectionOne(currentSection: $currentSection)
            } else {
                SectionTwo(currentSection: $currentSection)
            }
//            Stories()

            // Sound toggle button
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
}

struct SectionOne: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    @Binding var currentSection: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
                    ZStack {
                        LottieView(name: "Hand Scroll", loopMode: .loop)
                            .scaleEffect(/*@START_MENU_TOKEN@*/CGSize(width: 1.0, height: 1.0)/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 200, height: 200)
                    Page1()
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
                }
                ArrowButton(direction: .down) {
                    withAnimation {
                        currentSection = 2
                    }
                }
                .padding(.top, 10)
            }
            
            .padding(.top, !orientationInfo.isLandscape ? 300 : 10)
            .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
            .offset(y: orientationInfo.isLandscape ? -2200 : 0)
            .clipped()
        }
    }
}

struct SectionTwo: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    @Binding var currentSection: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
                ArrowButton(direction: .up) {
                    withAnimation {
                        currentSection = 1
                    }
                }
                .padding(.top, 20)
                
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
                Page24Part1()
                Page24Part2()
                Page25()
                Page25().opacity(0).frame(height: 1)
                Page25().opacity(0).frame(height: 1)
            }
            .padding(.bottom, !orientationInfo.isLandscape ? 1 : 10)
            .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
            .offset(y: orientationInfo.isLandscape ? -2200 : 0)
            .clipped()
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
            Image(systemName: direction == .up ? "arrow.up.circle.fill" : "arrow.down.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
        }
        .foregroundColor(.white)
        .opacity(0.5)
    }
}


struct Stories: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    
    var body: some View {
        LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
            Page1()
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
            Page24Part1()
            Page24Part2()
            Page25()
        }
        .padding(.bottom, !orientationInfo.isLandscape ? 300 : 10)
        .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
        .offset(y: orientationInfo.isLandscape ? -2200 : 0)
        .clipped()
    }
}

#Preview {
    StoryPage()
        .environmentObject(OrientationInfo())
        .environmentObject(PageControllerViewModel())
}
