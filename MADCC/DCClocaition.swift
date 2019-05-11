//
//  DCClocaition.swift
//  MADCC
//
//  Created by Alla Hajj on 4/2/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
// Latuied 26.395243 , Long50.121405
import SwiftSpinner
import UIKit
import MapKit
import CoreLocation

class DCClocaition: UIViewController {
    @IBOutlet weak var Map: MKMapView!
    override func viewDidLoad() {

        
        super.viewDidLoad()
        let locaition = CLLocationCoordinate2DMake(26.395243, 50.121405)
        let span = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let region = MKCoordinateRegion(center: locaition, span: span)
        Map.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = locaition
        annotation.title = "Dammam Community College"
        annotation.subtitle = "dcc.kfupm.edu.sa"

        Map.addAnnotation(annotation)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}