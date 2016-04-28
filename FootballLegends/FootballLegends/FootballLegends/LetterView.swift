//
//  LetterView.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/28/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

class LetterView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

extension UIView {
    class func createView() -> UIView {
        let viewsArray = NSBundle.mainBundle().loadNibNamed(String(self), owner: nil, options: nil) as NSArray
        let view = viewsArray.firstObject as! UIView
        return view
    }
}
