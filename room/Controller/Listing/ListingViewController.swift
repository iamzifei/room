//
//  ListingViewController.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class ListingViewController: UIViewController {

	let store = UserDefaults.standard
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
//		isFirstTimeUser()
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		navigationController?.navigationItem.title = NSLocalizedString("listing", comment: "")
	}
	
	@IBAction func addListing(_ sender: AnyObject) {
	}
	
	@IBAction func searchListing(_ sender: AnyObject) {
	}
	
}

extension ListingViewController{
	func isFirstTimeUser() {
		if !store.bool(forKey: "intro"){
			let storyboard = UIStoryboard.init(name: "Into", bundle: nil)
			let vc = storyboard.instantiateViewController(withIdentifier: "IntroViewController")
			present(vc, animated: true, completion: {
				self.store.set(true, forKey: "intro")
			})
		}
	}
}
