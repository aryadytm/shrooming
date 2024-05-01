//
//  Splash.swift
//  shrooming
//
//  Created by Arya Adyatma on 27/04/24.
//

import SwiftUI

struct SplashPage: View {
    @ObservedObject var viewModel: PageControllerViewModel
    @State private var opacity: Double = 0
    
    var body: some View {
        Image("onb_logo")
            .resizable()
            .frame(width: 160, height: 160)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.0)) {
                    opacity = 1.0
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation(.easeOut(duration: 1.0)) {
                        opacity = 0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        viewModel.setCurrentPage(page: .home)
                    }
                }
            }
            .padding(.leading, 30)
            .padding(.bottom, 30)
    }
}

#Preview {
    SplashPage(viewModel: PageControllerViewModel())
}
