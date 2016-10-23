//
//  ProfileViewController.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIScrollViewDelegate {
	
	let textAddListing = NSLocalizedString("add listing", comment: "")
	let textProfile = NSLocalizedString("profile", comment: "")
	let textLogOut = NSLocalizedString("logout", comment: "")
	
	@IBOutlet weak var profileView: UIView! {
		didSet{
			profileView.backgroundColor = UIColor.white.withAlphaComponent(0.985)
		}
	}
	@IBOutlet weak var buttonView: UIView! {
		didSet{
			buttonView.backgroundColor = UIColor.groupTableViewBackground.withAlphaComponent(0.5)
		}
	}
	@IBOutlet weak var addButton: UIButton! {
		didSet {
			addButton.layer.cornerRadius = 5.0
		}
	}
	@IBOutlet weak var logoutButton: UIBarButtonItem!
	@IBOutlet weak var profileImage: UIImageView! {
		didSet{
			profileImage.layer.masksToBounds = true
			profileImage.layer.cornerRadius = 47
			profileImage.layer.borderWidth = 3.0
			profileImage.layer.borderColor = UIColor.orange.cgColor
		}
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	
		addButton.setTitle(textAddListing, for: .normal)
		logoutButton.title = textLogOut
		navigationItem.title = textProfile
	}
	
	
}
