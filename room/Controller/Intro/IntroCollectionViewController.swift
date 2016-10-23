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

    override func viewDidLoad() {
        super.viewDidLoad()

    }

	

}

extension IntroCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of items
		return reuseIdentifier.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier[indexPath.row], for: indexPath)
	}
}
