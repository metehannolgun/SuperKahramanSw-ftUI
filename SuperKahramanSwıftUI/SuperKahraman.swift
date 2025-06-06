//
//  SuperKahraman.swift
//  SuperKahramanSwıftUI
//
//  Created by Metehan Olgun on 23.05.2025.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
}
struct Koordinat {
    var latitude : Double
    var longitude : Double
}


let batman = SuperKahraman(isim: "Batman" , gercekIsim:"Bruce Wayne" , gorselIsmi: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 41.8713679, longitude: -87.7669902))
let superman = SuperKahraman(isim: "Superman" , gercekIsim:"Clark Kent" , gorselIsmi: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 39.0865207, longitude: -94.7089592))
let ironman = SuperKahraman(isim: "Ironman", gercekIsim: "Tony Stark", gorselIsmi: "ironman", sehir: "New York", meslek: "İş Adamı", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729))
let spiderman = SuperKahraman(isim: "Spider-Man", gercekIsim: "Peter Parker", gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729))
let deadpool = SuperKahraman(isim: "Deadpool", gercekIsim: "Wade Winston Wilson", gorselIsmi: "deadpool", sehir: "Manhattan", meslek: "Asker", koordinat: Koordinat(latitude: 40.78343000, longitude: -73.96625000))
let drdoom = SuperKahraman(isim: "Dr.Doom", gercekIsim: "Victor Von Doom", gorselIsmi: "doom", sehir: "Latveria", meslek: "Bilim insanı", koordinat: Koordinat(latitude: 46.866667, longitude: 25.983333))

let superKahramanDizisi = [batman,superman,ironman,spiderman,deadpool,drdoom]


