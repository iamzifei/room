//
//  FavouriteViewController.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class FavouriteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		navigationController?.navigationItem.title = NSLocalizedString("favourite", comment: "")
	}
}
