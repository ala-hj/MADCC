//
//  BackTabelViewTable.swift
//  MADCC
//
//  Created by Alla Hajj on 2/16/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
//

import Foundation


// Grettings there, this class is used to add some strigs to the cell.
class BackTableViewCell: UITableViewController {
    
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["Academics.","Academic Programes","Faculty Profiles","Help & Contact"]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        // here we will show the text as lable on the Menu :)
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // var DestVC = segue.destinationViewController as! ViewController
        
        // Use them if you want for showing another thing if you select any text from the menu
        //var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
        
        //DestVC.varView = indexPath.row
    }
}