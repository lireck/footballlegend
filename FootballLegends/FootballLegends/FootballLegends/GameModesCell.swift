//
//  GameModesCell.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/14/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

class GameModesCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupContainerView()
        
    }
    
// MARK: Private methods
    
   private func setupContainerView() {
        containerView.layer.cornerRadius = 20
        containerView.layer.masksToBounds = true
    }
}

extension GameModesCell {
    func fillWithInfo(info : String) {
        imageView.image = UIImage(named: info)
        titleLabel.text = info
    }
    
}
