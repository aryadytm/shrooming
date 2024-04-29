//
//  HeadsetPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct SuggestionPage: View {
    @ObservedObject var viewModel: PageControllerViewModel
    @State private var opacity: Double = 0
    
    var body: some View {
        Image("onb_suggestion")
            .resizable()
            .scaledToFit()
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.0)) {
                    opacity = 1.0
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                    withAnimation(.easeOut(duration: 1.0)) {
                        opacity = 0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        viewModel.setCurrentPage(page: .story)
                    }
                }
            }
    }
}

#Preview {
    SuggestionPage(viewModel: PageControllerViewModel())
}
