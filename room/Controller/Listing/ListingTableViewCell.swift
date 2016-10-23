//
//  ListingTableViewCell.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class ListingTableViewCell: UITableViewCell {

	@IBOutlet weak var profileImage: UIImageView!{
		didSet{
			profileImage.layer.masksToBounds = true
			profileImage.layer.cornerRadius = 33.0
			profileImage.layer.borderWidth = 2.5
			profileImage.layer.borderColor = UIColor.lightGray.cgColor
		}
	}
	@IBOutlet weak var listingImage: UIImageView!
	@IBOutlet weak var status: UILabel! {
		didSet{
			status.layer.masksToBounds = true
			status.layer.cornerRadius = 3.5
		}
		
	}
	@IBOutlet weak var cost: UILabel!
	@IBOutlet weak var title: UILabel!
	@IBOutlet weak var location: UILabel!
	@IBOutlet weak var housingType: UILabel!
	@IBOutlet weak var listingType: UILabel!
	@IBOutlet weak var availableDate: UILabel!
	
//	var list: Listing {
//		didSet {
//			profileImage.image = list.image
//			
//		}
//	}
//	
//	var user: User {
//		didSet {
//			
//		}
//	}
	
	@IBAction func save(_ sender: AnyObject) {
		//TODO: Save to Favourite
	}
	
	
	
}
