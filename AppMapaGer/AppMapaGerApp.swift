//
//  AppMapaGerApp.swift
//  AppMapaGer
//
//  Created by Gerardo Jimenez Custodio on 03/05/26.
//

import SwiftUI
import GoogleMaps //importar google maps

@main
struct AppMapaGerApp: App {
    
    //2 api de google maps
    init() {
        GMSServices.provideAPIKey("API KEY")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
