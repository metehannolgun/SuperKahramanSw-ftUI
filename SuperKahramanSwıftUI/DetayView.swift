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
                    .edgesIgnoringSafeArea(.top)
                OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3 , alignment: .center)
                    .offset( y: UIScreen.main.bounds.height * -0.25)
                    .padding(.bottom, UIScreen.main.bounds.height * -0.10)
                
                VStack{
                    HStack{
                        
                        Text(secilenKahraman.isim)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        Spacer()
                        Text(secilenKahraman.gercekIsim)
                            .font(.title)
                            .foregroundColor(.brown)
                    }
                    HStack{
                        Text(secilenKahraman.sehir)
                            .bold()
                            .font(.title2)
                        
                        Spacer()
                        Text(secilenKahraman.meslek).bold()
                            .font(.title2)
                    }
                }.padding()
                    .offset(y:-UIScreen.main.bounds.height * 0.20)
                Spacer()
            
        }
    }
}

#Preview {
    DetayView(secilenKahraman: ironman)
}
