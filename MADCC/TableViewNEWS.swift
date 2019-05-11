//
//  TableViewNEWS.swift
//  MADCC
//
//  Created by Alla Hajj on 4/15/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
//

import Foundation
import UIKit

class TableViewNEWS: UITableViewController {
    
    private let kTableHeaderHight: CGFloat = 300.0
    private let kTableHeaderCutAway: CGFloat = 80.0
    

    //--
    var headerView: UIView!
    var headerMaskLayer: CAShapeLayer!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        //-------
        tableView.addSubview(headerView)
        //-------
        tableView.contentInset = UIEdgeInsets(top: kTableHeaderHight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -kTableHeaderHight)
        updateheaderView()
        
        //----
        
        headerMaskLayer = CAShapeLayer()
        headerMaskLayer.fillColor = UIColor.blackColor().CGColor
        headerView.layer.mask = headerMaskLayer
        updateheaderView()
        //----
        let effectiveHight = kTableHeaderHight-kTableHeaderCutAway/2
        tableView.contentInset = UIEdgeInsets(top: effectiveHight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -effectiveHight)
        //----
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func updateheaderView() {
        var headerRect = CGRect(x: 0, y: -kTableHeaderHight, width: tableView.bounds.width, height: kTableHeaderHight)
        if tableView.contentOffset.y < -kTableHeaderHight  {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
        }
        headerView.frame = headerRect
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 0, y: 0))
        path.addLineToPoint(CGPoint(x: headerRect.width, y: 0))
        path.addLineToPoint(CGPoint(x: headerRect.width, y: headerRect.height))
        path.addLineToPoint(CGPoint(x: 0, y: headerRect.height-kTableHeaderCutAway))
        headerMaskLayer?.path = path.CGPath
        
        //-----
        let effectiveHight = kTableHeaderHight-kTableHeaderCutAway/2
        _ = CGRect(x: 0, y: -effectiveHight, width: tableView.bounds.width, height: kTableHeaderHight)
        if  tableView.contentOffset.y < -effectiveHight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y + kTableHeaderCutAway/2
        }
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        updateheaderView()
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
   
        return UITableViewAutomaticDimension
    }
        let items =  [Newsitem(category:.SAP, summary: "We are offering SAP short courses as per the following schedule. Please contact via phone of the registration:(966-013)8683300 Ext:838"),Newsitem(category:.DCC, summary: "Visit our website and it will be upgraded it soon:dcc.kfupm.edu.sa"),Newsitem(category:.graduationevent, summary: "In 27th april, students will be graduated"),Newsitem(category:.Semester, summary:"Every new semester comes after 3-4 months"), Newsitem(category:.summer, summary:"In summer period, there sevreal courses will be opened. Go and check in STUDENTS INFORMATION SYSTEM.")]
    
    //summer
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count

        // change it to count when u create the varibale
    }
    
    override  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let Cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! NewsItemCell
        Cell.newsItem = item

                return Cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}