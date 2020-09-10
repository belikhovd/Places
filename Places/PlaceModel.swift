//
//  PlaceModel.swift
//  Places
//
//  Created by Danil Belikhov on 10.09.2020.
//  Copyright © 2020 Danil Belikhov. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let placesNames = [
        "Burger King", "McDonald's", "KFC", "Парк 300-летия", "Tokio City", "Зенит Арена", "Таврический Сад", "Polytechnic University"
    ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in placesNames {
            places.append(Place(name: place, location: "St. Petersburg", type: "Restaurant", image: place))
        }
        
        return places
    }
}
