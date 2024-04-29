//
//  HeadsetPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct SuggestionPage: View {
    @ObservedObject var viewModel: PageControllerViewModel
    
    var body: some View {
        Image("onb_music_rec")
    }
}

#Preview {
    SuggestionPage(viewModel: PageControllerViewModel())
}
