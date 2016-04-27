//
//  BuyButton.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/28/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

@IBDesignable

class BuyButton: UIButton {

//MARK: IBIndpectable Properties
    @IBInspectable var corrnerRadius : CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth : CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor : UIColor {
        get {
            return UIColor(CGColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.CGColor
        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
