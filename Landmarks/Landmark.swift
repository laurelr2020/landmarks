//
//  Landmark.swift
//  Landmarks
//
//  Created by Regan Laurell on 10/12/19.
//  Copyright © 2019 Regan Laurell. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    
    var city: String
    var state: String
    var country: String
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case parks = "Parks"
        case museums = "Musumes"
    }
}

extension Landmark {
    var image: Image{
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codeable {
    var latidude: Double
    var longitude: Double
}
