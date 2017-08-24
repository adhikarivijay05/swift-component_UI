//
//  minarAnnotation.swift
//  project_swift
//
//  Created by Vijay Adhikari on 22/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import MapKit


class minarAnnotation: NSObject, MKAnnotation {
    var title : String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle : String, coordinate : CLLocationCoordinate2D){
    
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
    
}
