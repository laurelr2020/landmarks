//
//  MapView.swift
//  Landmarks
//
//  Created by Regan Laurell on 10/12/19.
//  Copyright © 2019 Regan Laurell. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MapView.UIViewType {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 43.267659, longitude: -2.934524)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.001)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
