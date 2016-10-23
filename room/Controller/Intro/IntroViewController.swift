//
//  IntroViewController.swift
//  room
//
//  Created by CY Lim on 23/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
	
	@IBOutlet weak var skipButton: UIButton!
	@IBOutlet weak var prevButton: UIButton!
	@IBOutlet weak var nextButton: UIButton!
	@IBOutlet weak var pageController: UIPageControl!
	
	let store = UserDefaults.standard
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func prevPage(_ sender: AnyObject) {

	}
	
	@IBAction func nextPage(_ sender: AnyObject) {
	}

	@IBAction func skipIntro(_ sender: AnyObject) {
		dismiss(animated: true, completion: {
			self.store.set(true, forKey: "intro")
		})
	}
}
