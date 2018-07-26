//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate {

    // MARK: - Properties
    
    var placeController: PlaceController?
    
    var mapViewController: MapViewController!   // want them to crash if they are nil
    var placesTableViewController: PlacesTableViewController!
    
    // MARK: - PlacesTableViewControllerDelegate
    
    func placeWasSelected(place: Place) {
        mapViewController.location = place.location
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tableVC = segue.destination as? PlacesTableViewController {
            placesTableViewController = tableVC
            placesTableViewController.placeController = placeController
            placesTableViewController.delegate = self
        }
        
        if let mapVC = segue.destination as? MapViewController {
            mapViewController = mapVC
        }
        
    }

    
}
