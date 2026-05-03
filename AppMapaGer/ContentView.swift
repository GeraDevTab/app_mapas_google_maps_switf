//
//  ContentView.swift
//  AppMapaGer
//
//  Created by Gerardo Jimenez Custodio on 03/05/26.
//

import SwiftUI
import GoogleMaps

//mapa
struct GoogleMapsView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        //coordenadas
        let camera = GMSCameraPosition.camera(withLatitude: 17.995814, longitude: -92.935858, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        //marcador
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 17.995814, longitude: -92.935858)
        marker.title = "Tabasco"
        marker.map = mapView
        
        return mapView
    }
    
    func updateUIView(_ iuView: GMSMapView, context: Context) {}
}

//interfaz
struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            
            GoogleMapsView()
                .edgesIgnoringSafeArea(.all)
            
            //boton de vibracion
            Button(action: {
                vibrateiPhone()
            }) {
                Text("Vibrar iPhone")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
                    .shadow(radius: 5)
            }
            .padding(.bottom, 40)
        }
    }
    
    //funcion para vibrar (haptics)
    func vibrateiPhone() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
}
    
            
#Preview {
    ContentView()
}
