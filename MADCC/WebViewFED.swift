//
//  WebViewAC.swift
//  MADCC
//
//  Created by Alla Hajj on 4/10/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
//

import Foundation
import UIKit

class WebViewFED: UIViewController {

    
    @IBOutlet weak var WebViewFED: UIWebView!
    let URPath = "https://dcc.kfupm.edu.sa/fe.html"
    
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
        WebViewFED.loadRequest(request)
    }
}