//
//  PlayPage.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct HomePage: View {
    @ObservedObject var viewModel: PageControllerViewModel
    @State private var opacity: Double = 0
    
    var body: some View {
        VStack {
            Image("onb_illust")
                .resizable()
                .scaledToFit()
            Image("onb_play")
                .resizable()
                .frame(width: 60, height: 60)
                .padding(.top)
                .onTapGesture {
                    withAnimation(.easeOut(duration: 1.0)) {
                        opacity = 0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        viewModel.setCurrentPage(page: .suggestion)
                    }
                }
        }
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn(duration: 1.0)) {
                opacity = 1.0
            }
        }
    }
}

#Preview {
    HomePage(viewModel: PageControllerViewModel())
}
