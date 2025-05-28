//
//  ListeRowView.swift
//  SuperKahramanSwıftUI
//
//  Created by Metehan Olgun on 28.05.2025.
//

import SwiftUI

struct ListeRowView: View {
    var superKahraman : SuperKahraman
    var body: some View {
        HStack {
            Image(superKahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(superKahraman.isim)
                    .font(.title)
                    .bold()
                    Text(superKahraman.gercekIsim)
                    .font(.title)
                        
            }
                
            Spacer()
        }
        
    }
}

#Preview {
    ListeRowView(superKahraman: batman)
}
