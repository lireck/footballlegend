//
//  GameModesViewController.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/14/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

let whatsPleyerSequeIdentifier = "WhatsPleyerSeque"
let whatsTeamSequeIdentifier = "WhatsTeamSeque"
let whatsEventSequeIndentifier = "WhatsEventSeque"

class GameModesViewController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
// MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
// MARK: Properties
    var gameModesNames = ["What's Player?", "What's Team?", "What's Event?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
// MARK: Collection view data source and delegate
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gameModesNames.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(String(GameModesCell), forIndexPath: indexPath) as! GameModesCell
        let gameModeName = gameModesNames[indexPath.row] as String
        cell.fillWithInfo(gameModeName)
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        switch indexPath.row {
        case 0:
            performSegueWithIdentifier(whatsPleyerSequeIdentifier, sender: self)
        case 1:
            performSegueWithIdentifier(whatsTeamSequeIdentifier, sender: self)
        case 2:
            performSegueWithIdentifier(whatsEventSequeIndentifier, sender: self)
        default:
            NSLog("default")
        }
    }
    
// MARK: Collection view flow layout delegate
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
// MARK: Actions
    @IBAction func backAction(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
}
