//
//  Newsitem.swift
//  MADCC
//
//  Created by Alla Hajj on 4/15/16.
//  Copyright © 2016 DCC_APP. All rights reserved.
//

import Foundation
import UIKit
struct Newsitem {
    enum Newscatgeory {
        case SAP
        case DCC
        case graduationevent
        case TwitterAccount
        case Semester
        case summer
        
        func toString() -> String {
            
            switch self {
            case .SAP:
                return "SAP"
            case .DCC:
                return "DCC"
            case .graduationevent:
                return "Graduation Event"
            case .TwitterAccount:
                return "Twitter Account"
            case .Semester:
                return "Semester"
            case .summer:
                return "Summer"
                
            //default:
                //write a code
            }
        
    }
        func toColor() -> UIColor {
            
            switch self {
            case .SAP:
                return UIColor(red: 0.106, green: 0.686, blue: 0.125, alpha: 1)
            case .DCC:
                return UIColor(red: 0.144, green: 0.639, blue: 0.325, alpha: 1)
            case .graduationevent:
                return UIColor(red: 0.522, green: 0.486, blue: 0.925, alpha: 1)
            case .TwitterAccount:
                return UIColor(red: 0.906, green: 0.290, blue: 0.984, alpha: 1)
            case .Semester:
                return UIColor(red: 0.606, green: 0.271, blue: 0.225, alpha: 1)
            case .summer:
                return UIColor(red: 0.106, green: 0.772, blue: 0.153, alpha: 1)
            }
        }
    }
    let category: Newscatgeory
    let summary: String
}