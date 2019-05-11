//
//  ViewController.swift
//  MADCC
//
//  Created by Alla Hajj on 2/16/16.
//  Copyright © 2016 DCC_APP. All rights reserved.

import SwiftSpinner
import UIKit
import TwitterKit

class ViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

  SwiftSpinner.show("Loading the tweets ..").addTapHandler({
            SwiftSpinner.hide()
        }, subtitle: "Tap to hide while connecting! This will affect only the current operation.")
        
        // ----------------------
        
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "KFUPM", APIClient: client)
    }

    
    override  func viewWillAppear(animated: Bool) {
        animateTable()
    }
    
    func animateTable() {
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableHeight: CGFloat = tableView.bounds.size.height
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransformMakeTranslation(0, tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell1: UITableViewCell = a as UITableViewCell
            UIView.animateWithDuration(1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                cell1.transform = CGAffineTransformMakeTranslation(0, 0);
                }, completion: nil)
            
            index += 1
        }
    }

}
