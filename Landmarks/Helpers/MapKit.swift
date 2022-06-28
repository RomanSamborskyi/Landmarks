//
//  MapKit.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 25.06.2022.
//

import SwiftUI
import MapKit

struct MapKit: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapKit_Previews: PreviewProvider {
    static var previews: some View {
        MapKit(coordinate: CLLocationCoordinate2DMake(34.011_286, -116.166_868))
    }
}
