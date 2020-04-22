//
//  UIColor.swift
//  iChat
//
//  Created by Cong La on 4/22/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    /**
     convenence init UIcolor with hex like string
     - Parameters :
     - hex : hex color string (ex: #000000)
     */
    convenience init(hex: String) {
        self.init(hex: hex, alpha:1)
    }
    
    /**
     convenence init UIcolor with hex like string
     - Parameters :
     - hex : hex color string (ex: #000000)
     - alpha : set transparent value
     */
    convenience init(hex: String, alpha: CGFloat) {
        var hexWithoutSymbol = hex
        if hexWithoutSymbol.hasPrefix("#") {
            //            hexWithoutSymbol = hex.substring(from: hex.index(hex.startIndex, offsetBy: 1))
            
            hexWithoutSymbol = String(hex[hex.index(after: hex.startIndex)..<hex.endIndex])
        }
        
        let scanner = Scanner(string: hexWithoutSymbol)
        var hexInt:UInt32 = 0x0
        scanner.scanHexInt32(&hexInt)
        
        var r:UInt32!, g:UInt32!, b:UInt32!
        switch (hexWithoutSymbol.count) {
        case 3: // #RGB
            r = ((hexInt >> 4) & 0xf0 | (hexInt >> 8) & 0x0f)
            g = ((hexInt >> 0) & 0xf0 | (hexInt >> 4) & 0x0f)
            b = ((hexInt << 4) & 0xf0 | hexInt & 0x0f)
            break;
        case 6: // #RRGGBB
            r = (hexInt >> 16) & 0xff
            g = (hexInt >> 8) & 0xff
            b = hexInt & 0xff
            break;
        default:
            // TODO:ERROR
            break;
        }
        
        self.init(
            red: (CGFloat(r)/255),
            green: (CGFloat(g)/255),
            blue: (CGFloat(b)/255),
            alpha:alpha)
    }
}

