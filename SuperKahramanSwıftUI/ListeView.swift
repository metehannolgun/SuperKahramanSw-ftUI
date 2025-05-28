//
//  ContentView.swift
//  SuperKahramanSwıftUI
//
//  Created by Metehan Olgun on 23.05.2025.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superKahramanDizisi) { superKahraman in
                NavigationLink(
                    destination: DetayView(secilenKahraman: superKahraman),
                    label: {
                        ListeRowView(superKahraman: superKahraman)
                    })
                
            }.navigationTitle(Text("Süper Kahraman Kitabı"))
            
        }
    }
}

#Preview {
    ListeView()
}
