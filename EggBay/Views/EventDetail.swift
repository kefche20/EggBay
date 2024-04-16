//
//  EventDetail.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 16/04/2024.
//

import SwiftUI
import MapKit

struct EventDetail: View {
    @Environment(ModelData.self) var modelData
    @Environment(\.presentationMode) var presentationMode
    @State private var isPresentingConfirm: Bool = false
    @State private var dates: Set<DateComponents> = Set<DateComponents>([ 
                                                                          Calendar.current.dateComponents([.year, .month, .day], from: Date().addingTimeInterval(386400))])
    let event: Event
    
    var body: some View {
        ScrollView() {
            LazyVStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text(event.name)
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Text(event.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                MultiDatePicker("Dates:", selection: $dates)
                LocationMapView(location: event.location)
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.bottom, 16)
            }
            .scaledToFit()
            .padding(0)
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
//#Preview {
//    FarmView(farm: Farm(ID: 1, name: "FarmName", location: "Momchilovtsi", tel: 088869434, description: "Farm fat description"))
//}
