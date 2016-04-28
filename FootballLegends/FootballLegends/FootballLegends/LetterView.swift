//
//  LetterView.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/28/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

class LetterView: UIView {
    @IBOutlet private weak var letterLabel: UILabel!
}

extension LetterView {
    func setLetter(letter : String) {
        letterLabel.text = letter
    }
}

extension UIView {
    class func createView() -> UIView {
        let viewsArray = NSBundle.mainBundle().loadNibNamed(String(self), owner: nil, options: nil) as NSArray
        let view = viewsArray.firstObject as! UIView
        return view
    }
}
