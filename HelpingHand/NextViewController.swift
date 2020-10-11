//
//  NextViewController.swift
//  HelpingHand
//
//  Created by Mohit on 10/11/20.
//  Copyright © 2020 MoDo. All rights reserved.
//

import UIKit
import MapKit

class NextViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    let initialLocation = CLLocation(latitude: 33.4255, longitude: -111.9400)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        map.showsUserLocation = true
           
        
        map.centerToLocation(initialLocation)
        
        let park1 = MKPointAnnotation()
        park1.title = "Tempe Beach Park"
        park1.subtitle = "Outdoor, Park, Boating"
        park1.coordinate =
            CLLocationCoordinate2D(latitude: 33.4307, longitude: -111.9417)
        map.addAnnotation(park1)
        
        let park2 = MKPointAnnotation()
        park2.title = "Birchett Park"
        park2.subtitle = "Outdoor, Park, ASU"
        park2.coordinate =
            CLLocationCoordinate2D(latitude: 33.4153358, longitude: -111.9393939)
        map.addAnnotation(park2)
        
        
        map.delegate = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 10000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
