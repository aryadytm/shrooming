//
//  PageControllerViewModel.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import Foundation
import SwiftUI
import AVFoundation

class PageControllerViewModel: ObservableObject {
    @Published var currentPage: Page = .splash
    
    var bgPlayer: AVAudioPlayer?
    var windPlayer: AVAudioPlayer?
    
    enum Page {
        case splash
        case home
        case suggestion
        case story
    }
    
    init() {
        // Initialize the audio player with the background music
        if let bgMusicURL = Bundle.main.url(forResource: "bgmusic", withExtension: "mp3") {
            do {
                let player = try AVAudioPlayer(contentsOf: bgMusicURL)
                player.numberOfLoops = -1 // Loop indefinitely
                self.bgPlayer = player
            } catch {
                print("Failed to initialize audio player: \(error)")
            }
        }
        
        // Initialize the audio player with the background music
        if let windMusicURL = Bundle.main.url(forResource: "windsfx", withExtension: "mp3") {
            do {
                let player = try AVAudioPlayer(contentsOf: windMusicURL)
//                player.numberOfLoops = -1 // Loop indefinitely
                self.windPlayer = player
            } catch {
                print("Failed to initialize audio player: \(error)")
            }
        }
    }
    
    func setCurrentPage(page: Page) {
        currentPage = page
        handleMusicForCurrentPage()
    }
    
    private func handleMusicForCurrentPage() {
        switch currentPage {
        case .suggestion:
            windPlayer?.play()
        case .story:
            bgPlayer?.play()
        default:
            bgPlayer?.stop()
        }
    }
}
