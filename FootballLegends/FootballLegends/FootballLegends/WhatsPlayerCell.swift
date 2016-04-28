//
//  WhatsPlayerCell.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/28/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

class WhatsPlayerCell: UICollectionViewCell {
    
    @IBOutlet private weak var letterLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.appYellowColor().CGColor
        layer.cornerRadius = 5;
        layer.masksToBounds = true
    }
}

extension WhatsPlayerCell {
    func setLetter(letter : String) {
        letterLabel.text = letter
    }
}

extension UIColor {
   class func appYellowColor() -> UIColor {
        return UIColor(red: 238.0/255.0, green: 186.0/255.0, blue: 48.0/255.0, alpha: 1.0)
    }
}