//
//  StoryPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI
import AVFoundation

struct StoryPage: View {
    @State private var opacity: Double = 0
    @State private var isSoundOn: Bool = true
    @EnvironmentObject var orientationInfo: OrientationInfo
        
    private var audioPlayer: AVAudioPlayer?

    init() {
        // Initialize the audio player with the background music
        if let bgMusicURL = Bundle.main.url(forResource: "bgmusic", withExtension: "mp3") {
            do {
                let player = try AVAudioPlayer(contentsOf: bgMusicURL)
                player.numberOfLoops = -1 // Loop indefinitely
                self.audioPlayer = player
            } catch {
                print("Failed to initialize audio player: \(error)")
            }
        }
    }
    
    var body: some View {
        ZStack {

            ScrollView {
                Stories()
                    .padding(.vertical, !orientationInfo.isLandscape ? 300 : 10)
                    .scaleEffect(orientationInfo.isLandscape ? 0.6 : 1)
                    .clipped()
            }
            
            // Sound toggle button
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Button(action: toggleSound) {
                        Image(systemName: "speaker.wave.2.fill")
                            .scaleEffect(0.5)
                            .font(.largeTitle)
                            .foregroundColor(isSoundOn ? .black : .gray)
                            .background(isSoundOn ? Color.white : Color.clear)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .padding()
                    }
                    .offset(y: -10)
                    .opacity(0.5)
                }
                Spacer()
            }
        }
        .opacity(opacity)
        .onAppear {
            if isSoundOn {
                audioPlayer?.play()
            }
            withAnimation(.easeIn(duration: 3.0)) {
                opacity = 1.0
            }
        }
    }
    
    func toggleSound() {
        isSoundOn.toggle()
        if isSoundOn {
            audioPlayer?.play()
        } else {
            audioPlayer?.pause()
        }
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
            Page24()
            Page25()
        }
    }
}



#Preview {
    StoryPage()
        .environmentObject(OrientationInfo())
}
