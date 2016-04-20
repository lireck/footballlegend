//
//  BaseViewController.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/13/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        attachBackground()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func attachBackground() {
        let backgroundImage = UIImage.init(named: "background")
        UIGraphicsBeginImageContext(view.frame.size)
        backgroundImage?.drawInRect(view.bounds)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        view.backgroundColor = UIColor.init(patternImage: image)
    }

}
