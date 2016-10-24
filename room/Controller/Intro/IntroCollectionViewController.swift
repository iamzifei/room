//
//  IntroCollectionViewController.swift
//  room
//
//  Created by CY Lim on 23/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

private let reuseIdentifier = ["intro1","intro2","intro3"]
class IntroCollectionViewController: UIViewController {
	@IBOutlet weak var collectionView: UICollectionView!
	
	var delegate: IntroViewController?
	

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewDidLayoutSubviews() {
		let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
		let frame = collectionView.frame
		layout?.itemSize = CGSize(width: frame.width-10, height: frame.height)
		layout?.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
		
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	}
}

extension IntroCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return reuseIdentifier.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier[indexPath.row], for: indexPath)
		
		return cell
	}
	
	func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
		let page = lround(Double(collectionView.contentOffset.x / collectionView.frame.size.width))
		
		delegate?.turnPage(page: page)
	}
	
}
