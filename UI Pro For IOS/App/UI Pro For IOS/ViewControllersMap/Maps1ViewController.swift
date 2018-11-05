//
//  Maps1ViewController.swift
//  UI Pro For IOS
//
//  Created by Anthony on 14/03/2018.
//  Copyright © 2018 Mavsoft. All rights reserved.
//

import UIKit
import Mapbox

class Maps1ViewController: UIViewController, MGLMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Using MapBox
        //https://www.mapbox.com/install
        
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.delegate = self
        
        mapView.styleURL = MGLStyle.outdoorsStyleURL();
        
        // replace
        let center = CLLocationCoordinate2D(latitude: 39.900136, longitude: -3.616773)
        
        // Optionally set a starting point.
        mapView.setCenter(center, zoomLevel: 2, direction: 0, animated: false)
        
        view.addSubview(mapView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func mapViewDidFinishLoadingMap(_ mapView: MGLMapView) {
        let camera = MGLMapCamera(lookingAtCenter: mapView.centerCoordinate, fromDistance: 4500, pitch: 15, heading: 180)
        
        mapView.setCamera(camera, withDuration: 5, animationTimingFunction: CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut))
    }

}
