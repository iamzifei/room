//
//  IntroViewController.swift
//  room
//
//  Created by CY Lim on 23/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
	
	enum button: String, RawRepresentable {
		case skip = "Skip Now"
		case done = "Enter"
	}
	
	@IBOutlet weak var externalView: UIView!
	@IBOutlet weak var skipButton: UIButton!
	@IBOutlet weak var prevButton: UIButton!
	@IBOutlet weak var nextButton: UIButton!
	@IBOutlet weak var pageController: UIPageControl!
	
	let store = UserDefaults.standard
	
	var childController: IntroCollectionViewController? = nil
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		prevButton.isHidden = true
	}
	
	@IBAction func prevPage(_ sender: AnyObject) {
		turnPage(increase: false)
	}
	
	@IBAction func nextPage(_ sender: AnyObject) {
		turnPage(increase: true)
	}

	@IBAction func skipIntro(_ sender: AnyObject) {
		dismiss(animated: true, completion: {
			self.store.set(true, forKey: "intro")
		})
	}
	
	
}

extension IntroViewController {
	func turnPage(increase: Bool){
		var page = pageController.currentPage
		
		increase == true ? (page += 1) : (page -= 1) // Do increament or decrement for page
		
		// Update button text and hidden status
		turnPage(page: page)
		
		// Show the new Intro page
		childController?.collectionView.scrollToItem(at: IndexPath(item: page, section: 0), at: .left, animated: true)
		
	}
	
	func turnPage(page: Int){
		let total = pageController.numberOfPages - 1
		
		pageController.currentPage = page
		
		// Decide whether should show the button for next of previous page
		page == total ? (nextButton.isHidden = true) : (nextButton.isHidden = false)
		page == 0 ? (prevButton.isHidden = true) : (prevButton.isHidden = false)
		
		// if page is final page, show "enter" instead of "skip"
		page == total ? (skipButton.setTitle("Enter Now", for: .normal)) : (skipButton.setTitle("Skip Now", for: .normal))
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "introEmbed" {
			childController = segue.destination as? IntroCollectionViewController
			childController?.delegate = self
		}
	}
}
