//
//  PageControllerViewModel.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import Foundation
import SwiftUI


class PageControllerViewModel: ObservableObject {
    @Published var currentPage: Page = .splash
    
    enum Page {
        case splash
        case home
        case suggestion
        case story
    }
    
    func setCurrentPage(page: Page) {
        currentPage = page
    }
}
