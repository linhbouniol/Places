//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter {

    var placeController: PlaceController?
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var latitudeTextField: UITextField!
    @IBOutlet var longitudeTextField: UITextField!
    
    @IBAction func createPlace(_ sender: Any) {
        guard let name = nameTextField.text,
            let latitudeString = latitudeTextField.text,
            let longitudeString = longitudeTextField.text,
            let latitude = Double(latitudeString),
            let longitude = Double(longitudeString) else { return }
        
        placeController?.createPlace(withName: name, latitude: latitude, longitude: longitude)
    }
    
}
