//
//  PlacesPresenter.swift
//  Places
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

// Protocol for types that display, manipulate or create Place objects
protocol PlacesPresenter: class {
    var placeController: PlaceController? { get set }
}
