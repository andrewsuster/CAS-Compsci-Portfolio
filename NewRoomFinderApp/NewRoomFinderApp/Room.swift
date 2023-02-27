//
//  Room.swift
//  NewRoomFinderApp
//
//  Created by Mark Suster on 12/2/22.
//
import Foundation
import SwiftUI
import CoreLocation

struct Room: Hashable, Codable, Identifiable {
    var id: Int
    var room: String
    var fullName: String
    var building: String
    var date: String
    var profession: String
    var floor: String
    var blurb: String
    var quote: String

  
     
    
    var imageName: String
    
    var imageExtension:String
  

    private var longitude:Double
    private var latitude:Double
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
        latitude: latitude,
        longitude: longitude)
        }
    }

