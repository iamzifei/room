
//
//  ProfileTableViewController.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

enum Functionality: String {
	case listing = "my listings"
	case message = "my messages"
	case search = "my searches"
	
	static let allValues = [listing, message, search]
}

enum Support: String {
	case setting = "settings"
	case contact = "contact us"
	case term = "terms"
	case feedback = "feedback"
	
	static let allValues = [setting, contact, term, feedback]
}

enum Section: String {
	case support = "support"
	case logout = "logout"
}

class ProfileTableViewController: UITableViewController {

	@IBOutlet weak var logoutButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.contentInset = UIEdgeInsets(top: 134, left: 0, bottom: -134, right: 0)
		tableView.contentOffset = CGPoint(x: 0, y: -134)
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		logoutButton.setTitle(translate(text: Section.logout.rawValue), for: .normal)
	}
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		switch section {
		case 1:
			return translate(text: Section.support.rawValue)
		default:
			return nil
		}
	}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
		
		switch indexPath.section {
		case 0:
			cell.textLabel?.text = translate(text: Functionality.allValues[indexPath.row].rawValue)
			break
		case 1:
			cell.textLabel?.text = translate(text: Support.allValues[indexPath.row].rawValue)
			break
		default: break
		}

        return cell
    }
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		// TODO: Go to correct responded View
	}

	@IBAction func LogOut(_ sender: AnyObject) {
		// TODO: perform Log out
	}
}

extension ProfileTableViewController{
	func translate(text: String, comment: String = "") -> String{
		return NSLocalizedString(text, comment: comment)
	}
}
