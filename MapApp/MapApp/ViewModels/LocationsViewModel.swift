//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by student on 10/29/25.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    //　MARK: - Published Properties
    
    /// All locations loaded from the data service
    @Published var locations: [Location]
    
    /// Current location displayed on the map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    /// The visible region on the map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    /// Controls whether the list of locations is shown or hidden
    @Published var showLocationsList: Bool = false
    
    //Show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    
    // Initialization
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    
    // Map Control
    /// Updates the map region based on the given location
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan
            )
        }
    }
    
    
    // Functions
    
    /// Toggles the visibility of the location list
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    /// Displays a specific location on the map
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    /// Shows the next location in the list when the "Next" button is pressed
    func nextButtonPressed() {
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
            print(" Could not find the current index in the locations array. This should never happen.")
            return
        }
        
        // Determine the next index
        let nextIndex = currentIndex + 1
        
        // If the index is out of range, restart from the beginning
        guard locations.indices.contains(nextIndex) else {
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // Display the next location
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
