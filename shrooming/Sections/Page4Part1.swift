//
//  Page4.swift
//  shrooming
//
//  Created by Arya Adyatma on 28/04/24.
//

import SwiftUI

struct Page4Part1: View {
    var body: some View {
        ZStack(alignment: .center) {
            StaticObject(assetName: "page_4_bg")
            StaticObject(assetName: "page_4_parent")
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            Page4Part1()
                .padding(.top, 500)
                .padding(.bottom, 800)
        }
    }
}
