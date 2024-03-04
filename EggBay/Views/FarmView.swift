//
//  StoreView.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 04/03/2024.
//

import SwiftUI
import MapKit

struct FarmView: View {
    let farm: Farm
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(farm.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(farm.description)
                .font(.body)
                .foregroundColor(.secondary)
            
            LocationMapView(location: farm.location)
                .frame(height: 200)
                .cornerRadius(10)
                .padding(.bottom, 16)
        }
        .padding()
    }
    
    struct LocationMapView: UIViewRepresentable {
        let location: String
        
        func makeUIView(context: Context) -> MKMapView {
            MKMapView()
        }
        
        func updateUIView(_ mapView: MKMapView, context: Context) {
            let geocoder = CLGeocoder()
            geocoder.geocodeAddressString(location) { (placemarks, error) in
                if let error = error {
                    print("Geocoding failed with error: \(error)")
                    return
                }
                
                if let placemark = placemarks?.first {
                    let coordinate = placemark.location?.coordinate ?? CLLocationCoordinate2D()
                    let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
                    mapView.setRegion(region, animated: true)
                    
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = coordinate
                    annotation.title = self.location
                    mapView.addAnnotation(annotation)
                }
            }
        }
        
    }
}
#Preview {
    FarmView(farm: Farm(ID: 1, name: "FarmName", location: "Momchilovtsi", tel: 088869434, description: "Farm fat description"))
}
