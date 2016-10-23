//
//  IntroView.swift
//  room
//
//  Created by CY Lim on 23/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

@IBDesignable
class IntroView: NibDesignable {

	@IBOutlet weak var titleLabel: UILabel!
	@IBInspectable @IBOutlet weak var subtitleLabel: UILabel!
	@IBInspectable @IBOutlet weak var imageView: UIImageView!

	@IBInspectable var title:String? {
		get{
			return titleLabel.text
		}
		set {
			titleLabel.text = newValue
		}
	}
	
	@IBInspectable var subtitle:String? {
		get{
			return subtitleLabel.text
		}
		set {
			subtitleLabel.text = newValue
		}
	}
	
	@IBInspectable var image:UIImage? {
		get{
			return imageView.image
		}
		set {
			imageView.image = newValue
		}
	}
}
