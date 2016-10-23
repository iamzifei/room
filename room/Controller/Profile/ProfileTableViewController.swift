//
//  ProfileTableViewController.swift
//  room
//
//  Created by CY Lim on 22/10/16.
//  Copyright © 2016 cy.my. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {
	
	let function = [NSLocalizedString("my listings", comment: "我的房源"),
	             NSLocalizedString("my messages", comment: ""),
	             NSLocalizedString("my searches", comment: "")]
	
	let support = [NSLocalizedString("setting", comment: ""),
	               NSLocalizedString("contact us", comment: ""),
	               NSLocalizedString("terms", comment: ""),
	               NSLocalizedString("feedback", comment: "")]
	
	let textSupport = NSLocalizedString("support", comment: "")

    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.contentInset = UIEdgeInsets(top: 134, left: 0, bottom: -20, right: 0)
    }
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		switch section {
		case 1:
			return textSupport
		default:
			return nil
		}
	}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
		
		switch indexPath.section {
		case 0:
			cell.textLabel?.text = function[indexPath.row]
			break
		case 1:
			cell.textLabel?.text = support[indexPath.row]
			break
		default: break
		}

        return cell
    }
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
	}

}
