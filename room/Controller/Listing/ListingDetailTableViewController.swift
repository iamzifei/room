//
//  ListingDetailTableViewController.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit
import MapKit

class ListingDetailTableViewController: UITableViewController {

	@IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
		mapView.isUserInteractionEnabled = false
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		tabBarController?.tabBar.isHidden = true
	}


}
