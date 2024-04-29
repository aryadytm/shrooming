//
//  PlayPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct HomePage: View {
    @ObservedObject var viewModel: PageControllerViewModel
    
    var body: some View {
        VStack {
            Image("onb_above_play")
            Image("onb_play_btn")
                .onTapGesture {
                    viewModel.setCurrentPage(page: .headset)
                }
        }
    }
}

#Preview {
    HomePage(viewModel: PageControllerViewModel())
}
