//
//  WhatsEventViewController.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/28/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

class WhatsEventViewController: BaseViewController {

    @IBOutlet weak var aAnswerButton: UIButton!
    @IBOutlet weak var bAnswerButton: UIButton!
    @IBOutlet weak var cAnswerButton: UIButton!
    @IBOutlet weak var dAnswerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: Actions
    
    @IBAction func backAction(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func aAnswerAction(sender: UIButton) {
        sender.backgroundColor = UIColor.redColor()
        bAnswerButton.enabled = false
        cAnswerButton.enabled = false
        dAnswerButton.enabled = false
    }
    
    @IBAction func bAnswerAction(sender: UIButton) {
        sender.backgroundColor = UIColor.redColor()
        aAnswerButton.enabled = false
        cAnswerButton.enabled = false
        dAnswerButton.enabled = false
    }
    
    @IBAction func cAnswerAction(sender: UIButton) {
        sender.backgroundColor = UIColor.greenColor()
        bAnswerButton.enabled = false
        aAnswerButton.enabled = false
        dAnswerButton.enabled = false
    }
    
    @IBAction func dAnswerAction(sender: UIButton) {
        sender.backgroundColor = UIColor.redColor()
        bAnswerButton.enabled = false
        cAnswerButton.enabled = false
        aAnswerButton.enabled = false
    }

}
