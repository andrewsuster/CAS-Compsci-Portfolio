//
//  MapView.swift
//  NewRoomFinderApp
//
//  Created by Mark Suster on 12/2/22.
//


import SwiftUI
import MapKit

struct MapView: View {
    var room: Room?
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        
        if let room=room{
            Map(coordinateRegion: $region, annotationItems: [room]){
                MapMarker(coordinate: $0.locationCoordinate)
            } .onAppear{setRegion(room.locationCoordinate)
            }
        }
        else{
            Text("No Room")
        }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.0025, longitudeDelta: 0.0025)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.02469485409758, longitude: -118.47392938238369))
    }
}


