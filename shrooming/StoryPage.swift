////
////  StoryPage.swift
////  shrooming
////
////  Created by Arya Adyatma on 27/04/24.
////
//// TODO:
////
//// X Ada SFX wind" sebelum mulai musik
//// CANCELLED Lagu mulai di halaman suggestion
//// X Volume pake coret
//// X Boneka no bg
//// X Ortu efek shake
//// X Alarm pake shake
////
//
//import SwiftUI
//import AVFoundation
//
//struct StoryPage: View {
//    @State private var opacity: Double = 0
//    @State private var isSoundOn: Bool = true
//    @State private var currentSection: Int = 1 // 1 for first section, 2 for second section
//    @EnvironmentObject var orientationInfo: OrientationInfo
//    @EnvironmentObject var viewModel: PageControllerViewModel
//    
//    var body: some View {
//        ZStack {
//            if currentSection == 1 {
//                GetSection1(currentSection: $currentSection)
//            } else {
//                GetSection2(currentSection: $currentSection)
//            }
//            
//            // Sound toggle button
//            VStack {
//                HStack {
//                    Spacer()
//                    Button(action: toggleSound) {
//                        Image(systemName: isSoundOn ? "speaker.wave.2.fill" : "speaker.slash")
//                            .scaleEffect(0.5)
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                            .shadow(radius: 10)
//                            .padding()
//                    }
//                    .opacity(0.5)
//                }
//                Spacer()
//            }
//        }
//        .opacity(opacity)
//        .onAppear {
//            if isSoundOn {
//                viewModel.bgPlayer?.play()
//            }
//            withAnimation(.easeIn(duration: 2.0)) {
//                opacity = 1.0
//            }
//        }
//    }
//    
//    func toggleSound() {
//        isSoundOn.toggle()
//        if isSoundOn {
//            viewModel.bgPlayer?.play()
//        } else {
//            viewModel.bgPlayer?.pause()
//        }
//    }
//    
//    private func GetSection1(currentSection: Binding<Int>) -> AnyView {
//        AnyView(SectionOne(currentSection: currentSection))
//    }
//    
//    private func GetSection2(currentSection: Binding<Int>) -> AnyView {
//        AnyView(SectionTwo(currentSection: currentSection))
//    }
//}
//
//struct SectionOne: View {
//    @Binding var currentSection: Int
//    @EnvironmentObject var orientationInfo: OrientationInfo
//    
//    var body: some View {
//        ScrollView(showsIndicators: false) {
//            VStack {
//                ZStack {
//                    LottieView(name: "Hand Scroll", loopMode: .loop)
//                        .frame(width: 200, height: 200)
//                        .offset(y: -150)
//                }
//                LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
//
//                    ForEach(1...21, id: \.self) { page in
//                        getPageView(page)
//                    }
//                }
//                ArrowButton(direction: .down) {
//                    withAnimation {
//                        currentSection = 2
//                    }
//                }
//                .padding(.top, 10)
//            }
//            .padding(.top, !orientationInfo.isLandscape ? 300 : 10)
//            .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
//            .offset(y: orientationInfo.isLandscape ? -2200 : 0)
//            .clipped()
//        }
//    }
//    
//    func getPageView(_ page: Int) -> some View {
//        switch page {
//        case 1: return AnyView(Page1())
//        case 2: return AnyView(Page2Part1())
//        case 3: return AnyView(Page2Part2())
//        case 4: return AnyView(Page2Part3())
//        case 5: return AnyView(Page3Part1())
//        case 6: return AnyView(Page3Part2())
//        case 7: return AnyView(Page4Part1())
//        case 8: return AnyView(Page4Part2())
//        case 9: return AnyView(Page5())
//        case 10: return AnyView(Page6())
//        case 11: return AnyView(Page7Part1())
//        case 12: return AnyView(Page7Part2())
//        case 13: return AnyView(Page8Part1())
//        case 14: return AnyView(Page8Part2())
//        case 15: return AnyView(Page9Part1())
//        case 16: return AnyView(Page9Part2())
//        case 17: return AnyView(Page9Part3())
//        case 18: return AnyView(Page9Part4())
//        case 19: return AnyView(Page10())
//        case 20: return AnyView(Page11Part1())
//        case 21: return AnyView(Page11Part2())
//        case 22: return AnyView(Page11Part3())
//        case 23: return AnyView(Page11Part4())
//        case 24: return AnyView(Page11Part5())
//        case 25: return AnyView(Page12())
//            // Define other pages similarly
//        default: return AnyView(Text(""))
//        }
//    }
//}
//
//struct SectionTwo: View {
//    @Binding var currentSection: Int
//    @EnvironmentObject var orientationInfo: OrientationInfo
//    
//    var body: some View {
//        ScrollView(showsIndicators: false) {
//            VStack {
//                LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
//                    ArrowButton(direction: .up) {
//                        withAnimation {
//                            currentSection = 1
//                        }
//                    }
//                    .padding(.top, 20)
//                    
//                    ForEach(11...35, id: \.self) { page in
//                        getPageView(page)
//                    }
//                }
//                Button(action: goToHome) {
//                    Image(systemName: "arrow.counterclockwise.circle.fill")
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                        .padding()
//                }
//                .foregroundColor(.white)
//                .opacity(0.5)
//            }
//            
//            .padding(.bottom, !orientationInfo.isLandscape ? 1 : 10)
//            .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
//            .offset(y: orientationInfo.isLandscape ? -2200 : 0)
//            .clipped()
//        }
//    }
//    
//    func goToHome() {
//        withAnimation {
//            currentSection = 1
//        }
//    }
//    
//    func getPageView(_ page: Int) -> some View {
//        switch page {
//        case 11: return AnyView(Page11Part1())
//        case 12: return AnyView(Page11Part2())
//        case 13: return AnyView(Page11Part3())
//        case 14: return AnyView(Page11Part4())
//        case 15: return AnyView(Page11Part5())
//        case 16: return AnyView(Page12())
//        case 17: return AnyView(Page13())
//        case 18: return AnyView(Page14())
//        case 19: return AnyView(Page15())
//        case 20: return AnyView(Page16())
//        case 21: return AnyView(Page17())
//        case 22: return AnyView(Page18())
//        case 23: return AnyView(Page19())
//        case 24: return AnyView(Page20())
//        case 25: return AnyView(Page21Part1())
//        case 26: return AnyView(Page21Part2())
//        case 27: return AnyView(Page22())
//        case 28: return AnyView(Page23Part1())
//        case 29: return AnyView(Page23Part2())
//        case 30: return AnyView(Page23Part3())
//        case 31: return AnyView(Page24Part1())
//        case 32: return AnyView(Page24Part2())
//        case 33: return AnyView(Page25())
//            // Ensure that you have an appropriate view for each case
//        default: return AnyView(Text(""))
//        }
//    }
//}
//
//struct ArrowButton: View {
//    enum Direction {
//        case up, down
//    }
//    
//    var direction: Direction
//    var action: () -> Void
//    
//    var body: some View {
//        Button(action: action) {
//            Image(systemName: direction == .up ? "arrow.left.circle.fill" : "arrow.right.circle.fill")
//                .resizable()
//                .frame(width: 50, height: 50)
//                .padding()
//        }
//        .foregroundColor(.white)
//        .opacity(0.5)
//    }
//}
//
////
////struct Stories: View {
////    @EnvironmentObject var orientationInfo: OrientationInfo
////    
////    var body: some View {
////        LazyVStack(spacing: !orientationInfo.isLandscape ? 500 : 100) {
////            Page1()
////            Page2Part1()
////            Page2Part2()
////            Page2Part3()
////            Page3Part1()
////            Page3Part2()
////            Page4Part1()
////            Page4Part2()
////            Page5()
////            Page6()
////            Page7Part1()
////            Page7Part2()
////            Page8Part1()
////            Page8Part2()
////            Page9Part1()
////            Page9Part2()
////            Page9Part3()
////            Page9Part4()
////            Page10()
////            Page11Part1()
////            Page11Part2()
////            Page11Part3()
////            Page11Part4()
////            Page11Part5()
////            Page12()
////            Page13()
////            Page14()
////            Page15()
////            Page16()
////            Page17()
////            Page18()
////            Page19()
////            Page20()
////            Page21Part1()
////            Page21Part2()
////            Page22()
////            Page23Part1()
////            Page23Part2()
////            Page23Part3()
////            Page24Part1()
////            Page24Part2()
////            Page25()
////        }
////        .padding(.bottom, !orientationInfo.isLandscape ? 300 : 10)
////        .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
////        .offset(y: orientationInfo.isLandscape ? -2200 : 0)
////        .clipped()
////    }
////}
//
//#Preview {
//    StoryPage()
//        .environmentObject(OrientationInfo())
//        .environmentObject(PageControllerViewModel())
//}
