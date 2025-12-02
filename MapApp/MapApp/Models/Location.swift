//
//  Location.swift
//  MapApp
//
//  Created by student on 10/21/25.
//

import Foundation
import MapKit;

// packs the kind of data we need for a location
// lookup meaning of Identifiable later, it can be confusing
struct Location: Identifiable, Equatable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    //let link: String
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
    // Identifiable
    var id: String {
        name + cityName
        // if name = "Colosseum"
        // and cityName = "Rome"
        // then id = "ColosseumRome"
    }
}

/*
Location(
    name: "Trevi Fountain",
    cityName: "Rome",
    coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
    description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
     imageNames: [
                 "rome-trevifountain-1",
                 "rome-trevifountain-2",
                 "rome-trevifountain-3",
    ],
    link: "https://en.wikipedia.org/wiki/Trevi_Fountain")
     */
    

