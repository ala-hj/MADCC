//
//  WebViewAC.swift
//  MADCC
//
//  Created by Alla Hajj on 4/10/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
//

import Foundation
import UIKit

class WebViewAC: UIViewController {
    @IBOutlet var WebViewAC: UIWebView!
    
    let URPath = "https://dcc.kfupm.edu.sa/ac.html"
    
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
        WebViewAC.loadRequest(request)
    }
}