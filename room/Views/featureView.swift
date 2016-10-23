//
//  featureView.swift
//  room
//
//  Created by CY Lim on 23/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class FeatureView: UIView {

	@IBOutlet var view: UIView!
	@IBOutlet weak var image: UIImageView!
	@IBOutlet weak var detail: UILabel!
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		UINib(nibName: "FeatureView", bundle: nil).instantiate(withOwner: self, options: nil)
		addSubview(view)
		view.frame = self.bounds
	}
	
	
//	var feature:Feature {
//		didSet{
//			image.image = feature.image
//			detail.text = feature.detail
//		}
//	}
}
