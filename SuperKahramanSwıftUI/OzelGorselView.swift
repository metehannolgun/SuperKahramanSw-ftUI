//
//  OzelGorselView.swift
//  SuperKahramanSwıftUI
//
//  Created by Metehan Olgun on 26.05.2025.
//

import SwiftUI

struct OzelGorselView: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 5)).shadow(radius: 15)
    }
}

#Preview {
    OzelGorselView(image: Image("spiderman"))
}
