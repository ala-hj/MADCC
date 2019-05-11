//
//  WebViewCO.swift
//  MADCC
//
//  Created by Alla Hajj on 4/12/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
//


import Foundation
import UIKit

class WebViewCO: UIViewController {
    
    
    @IBOutlet weak var WebViewCO: UIWebView!

    let URPath = "http://www.dcc.kfupm.edu.sa/sisweb/frmviewcol_sch.aspx"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadAddressURL()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadAddressURL(){
        let requstURL = NSURL(string: URPath)
        let request = NSURLRequest(URL: requstURL!)
        WebViewCO.loadRequest(request)
    }
}