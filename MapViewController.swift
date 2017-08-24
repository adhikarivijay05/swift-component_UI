//
//  MapViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 22/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let address : CLLocationCoordinate2D = CLLocationCoordinate2DMake(28.525294, 77.187658)
        let distanceSpan : CLLocationDegrees = 200
    
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(address, distanceSpan, distanceSpan), animated: true)
        
        let minarPin = minarAnnotation(title: "Qutab Minar", subtitle: "In Delhi", coordinate: address)
        
        mapView.addAnnotation(minarPin)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
