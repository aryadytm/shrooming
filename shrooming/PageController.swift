//
//  Onboarding.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct PageController: View {
    @StateObject var viewModel = PageControllerViewModel()
    
    var body: some View {
        switch viewModel.currentPage {
        case .splash:
            SplashPage(viewModel: viewModel)
        case .home:
            HomePage(viewModel: viewModel)
        case .suggestion:
            SuggestionPage(viewModel: viewModel)
        case .story:
//            StoryPage().environmentObject(viewModel)
            StoryPageV2().environmentObject(viewModel)
        }
    }
}
