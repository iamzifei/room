//
//  ListingTableViewController.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class ListingTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		tabBarController?.tabBar.isHidden = false
	}

}

extension ListingTableViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}

	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "listingCell", for: indexPath) as! ListingTableViewCell
		
		cell.listingImage.image = #imageLiteral(resourceName: "placeholder")
		cell.profileImage.image = #imageLiteral(resourceName: "placeholder")
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let cell = tableView.cellForRow(at: indexPath)
		
		let storyboard = UIStoryboard(name: "Listing", bundle: nil)
		let vc = storyboard.instantiateViewController(withIdentifier: "ListingDetailViewController")
		// TODO: Create Model for Listing
//		vc.listing = cell.listing
		
		navigationController?.pushViewController(vc, animated: true)
		
	}
}
