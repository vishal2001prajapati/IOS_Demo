//
//  MapViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 28/03/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    //MARK: - OutLets and Variables
    @IBOutlet weak var mapView: MKMapView!
    var nameOfCity = ["Select Your city:","Ahmedabad","Surat","Vadodara","Bhavnagar","Gandhinagar"]
    
    @IBOutlet weak var pickerView: UIPickerView!
    var mkanotation = MKPointAnnotation()
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let location = CLLocationCoordinate2D(latitude: 23.022893394212137 , longitude: 72.5673570611222)
        let pin = customPin(pinTitle: "Ahmedabad", pinSubTitle: "Ahmedabad,Gujarat,India", pinCooordinate: location)
        self.mapView.addAnnotation(pin)
        self.mapView.delegate = self
    }
}
//mark: - UIPickerViewDelegate
extension MapViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nameOfCity[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch(row) {
        case 1: moveFromCity(row: row, latitude: 23.076016748783598, longitude: 72.58149764168209)
        case 2: moveFromCity(row: row, latitude: 21.17066527747784, longitude: 72.8211556320877)
        case 3: moveFromCity(row: row, latitude: 22.305977694604856, longitude: 73.17273104954616)
        case 4: moveFromCity(row: row, latitude: 21.790272550804477, longitude: 72.15268279362586)
        default: moveFromCity(row: row, latitude: 23.21644635351676, longitude:  72.63850937402263)
        }
    }
}
//MARK: - move location
extension MapViewController{
    func moveFromCity(row: Int,latitude: Double,longitude: Double){
        mapView.removeAnnotation(mkanotation)
        let location = CLLocationCoordinate2D(latitude: latitude,longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 5)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        mkanotation.coordinate = location
        mapView.addAnnotation(mkanotation)
    }
}
//MARK: - UIPickerViewDataSource
extension MapViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nameOfCity.count
    }
}
//MARK: - MKMapViewDelegate
extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView,viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customAnotation")
        annotationView.image = UIImage(named: "house")
        annotationView.canShowCallout = true
        return annotationView
    }
}
//MARK: - Custom Anotation
class customPin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(pinTitle: String, pinSubTitle: String ,pinCooordinate: CLLocationCoordinate2D){
        self.title = pinTitle
        self.subtitle = pinSubTitle
        self.coordinate = pinCooordinate
        
    }
}
