//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Harrison Plaza Fountain",
            cityName: "Florence",
            coordinates: CLLocationCoordinate2D(latitude: 34.807201234569064, longitude: -87.67868112097757),
            description: "Dr. Donald and Laura Harrison donated the funds for the fountain which was to be made out of Italian Limestone. The university dedicated the fountain Oct. 21, 2002. On Dec. 18, 2019 the beloved Harrison fountain collapsed after having stood for 17 years. To rebuild the fountain, it was decided to use a marble material which would be carved, crated, and delivered to UNA by ship from Italy and serve as more structurally sound than the previous material. The rebuilding of the fountain completed in 2020.",
            imageNames: [
                "fountain1",
                "fountain2",
                "fountain3",
            ]),
        Location(
            name: "Guillot University Center",
            cityName: "Florence",
            coordinates: CLLocationCoordinate2D(latitude: 34.8072, longitude:  -87.6803),
            description: "Named for Robert Miller Guillot, president 1972-1989 the GUC opened in 1988 and contains a variety of offices, including the Student Government Association and the Military & Veteran Service Center. It also contains various student services, a food court, event centers, and social spaces.",
            imageNames: [
                "GUC1",
                "GUC2",
                "GUC3",
            ]),
        Location(
            name: "East Campus",
            cityName: "Florence",
            coordinates: CLLocationCoordinate2D(latitude: 34.8209, longitude: -87.6589),
            description: "East Campus, set apart from UNA’s main campus, houses the Center for Learning and Professional Development, which offers training and programs for non-traditional students. It is also home to The Joel R. Anderson Center for Innovation and Entrepreneurial Studies and has a student maker space known as the Generator.",
            imageNames: [
                "eastcampus2",
                "eastcampus3",
                "eastcampus1",
            ]),
        Location(
            name: "Wesleyan Hall",
            cityName: "Florence",
            coordinates: CLLocationCoordinate2D(latitude: 34.8089, longitude: -87.6791),
            description: "Built in 1855, Wesleyan Hall is a piece of Gothic Revival architecture and one of the oldest buildings on campus. Both Confederates and the Union army used this structure in the Civil War. Today it houses the Geography, Foreign Languages, and Psychology departments, and is included in the National Register of Historic Places.",
            imageNames: [
                "wesleyan1",
                "wesleyan2",
                "wesleyan3",
            ]),
        Location(
            name: "Norton Auditorium",
            cityName: "Florence",
            coordinates: CLLocationCoordinate2D(latitude: 34.8051, longitude: -87.6803),
            description: "Norton Auditorium is site to many local ceremonies and performances, including plays, recitals, graduations, and shows by the Shoals Symphony Orchestra. It underwent renovations beginning in 2019 that cost approximately $2 million. It is the second theater in the world that has color-changing lights in its shell.",
            imageNames: [
                "norton1",
                "norton2",
                "norton3",
            ]),
        Location(
            name: "Memorial Amphitheater",
            cityName: "Florence",
            coordinates: CLLocationCoordinate2D(latitude: 34.80814, longitude: -87.6797),
            description: "The amphitheater existed as early as 1836, with the stage being created in 1919. To honor the students who left to fight in World War I, Susan Jones Price wished to construct the amphitheater, and in 1934 the Civil Works Administration built it. Over the years it has undergone various changes and hosted many events and bands. The six columns on the stage honor the six former students who died during WWI.",
            imageNames: [
                "amp1",
                "amp2",
                "amp3",
            ]),
    ]
    
}
