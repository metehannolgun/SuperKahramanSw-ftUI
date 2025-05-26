//
//  DetayView.swift
//  SuperKahramanSwıftUI
//
//  Created by Metehan Olgun on 26.05.2025.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperKahraman
    var body: some View {
        VStack{
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame( height: UIScreen.main.bounds.height * 0.3 )
            OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3 , alignment: .center)
                .offset( y: UIScreen.main.bounds.height * -0.14)
        }
    }
}

#Preview {
    DetayView(secilenKahraman: batman)
}
