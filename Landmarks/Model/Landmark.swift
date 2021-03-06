//
//  Landmark.swift
//  Landmarks
//
//  Created by Jiayi Li on 2022/6/20.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark:Hashable,Codable,Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFeatured:Bool
    var isFavorite:Bool
    
    private var imageName: String
    var image:Image{
        Image(imageName)
    }
    
    private var coordinates:Coordinates
    struct Coordinates:Codable,Hashable{
        var longitude:Double
        var latitude:Double
    }
    var locationCoordinates:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}
