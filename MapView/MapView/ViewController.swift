//
//  ViewController.swift
//  MapView
//
//  Created by Bui Dang Nam Binh on 05/07/2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    var lat = 0.0
    var lon = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
                
        //center(location: eiffelTowerLocation)
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        MapView.delegate = self
        
        
        //addAnnotation()
        
        
    }
    
    func center(location: CLLocation) {
        MapView.setCenter(location.coordinate, animated: true)
    }

    @IBAction func moveToCurrentLocation(_ sender: Any) {
        
        let eiffelTowerLocation = CLLocation(latitude: lat, longitude:  lon)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: eiffelTowerLocation.coordinate, span: span)
        MapView.showsUserLocation = true
        MapView.region = region
        
        addAnnotation()
        
        let pins: [MyPin] = [MyPin(coordinate: CLLocationCoordinate2D(latitude: lat - 0.0012, longitude: lon + 0.0013), title: "Point 2", locationName: "Point 2"),
                             MyPin(coordinate: CLLocationCoordinate2D(latitude: lat + 0.0014, longitude: lon - 0.0012), title: "Point 3", locationName: "Point 3")
        ]
        MapView.addAnnotations(pins)
    }
    
    func addAnnotation() {
        let annotation = MKPointAnnotation()
        // Đặt 1 anotation cách vị trí hiện tại 0.001
        annotation.coordinate = CLLocationCoordinate2D(latitude: lat + 0.001, longitude: lon + 0.001)
        annotation.title = "Point 0001"
        annotation.subtitle = "subtitle 0001"
            
        MapView.addAnnotation(annotation)
    }
    
    
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            lat = location.coordinate.latitude
            lon = location.coordinate.longitude
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}

extension ViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
//        pin.animatesDrop = true
//        pin.pinTintColor = .red
//
//        return pin
        guard !(annotation is MKUserLocation) else {
            return nil
        }
        
        var anotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "custom")
        
        if anotationView == nil {
            anotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
            anotationView?.canShowCallout = true
        } else {
            anotationView?.annotation = annotation
        }
        anotationView?.image = UIImage(named: "khabanh")
        return anotationView
    }
}
