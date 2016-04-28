//
//  WhatsPlayerViewController.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/28/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

let numberOfLetters = 14

class WhatsPlayerViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var playerImageView: UIImageView!
    
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var lettersArray = Array<String>()
    let letterViewBuilder = LetterViewBuilder.init(numberOfViews: 5)
    
    var selectedLetterView = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        lettersArray = getSetOfRandomLetters(numberOfLetters)
        view.addSubview(letterViewBuilder.getLetterViewsInSuperviewRect(view.frame, underTheViewRect: playerImageView.frame))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
// MARK: Collections view data source and delegate
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfLetters
    }
   
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(String(WhatsPlayerCell), forIndexPath: indexPath) as! WhatsPlayerCell
        let letter = lettersArray[indexPath.row]
        cell.setLetter(letter)
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if selectedLetterView <= letterViewBuilder.viewsCount {
        let letterView = letterViewBuilder.letterViews[selectedLetterView] as LetterView
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        cell?.hidden = true
        collectionView.reloadItemsAtIndexPaths([indexPath])
        let letter = lettersArray[indexPath.row]
        letterView.setLetter(letter)
        selectedLetterView += 1
        }
    }
    
// MARK: IBActions
    @IBAction func backAction(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
// MARK: Private methods
    private func getSetOfRandomLetters(count : Int) -> Array<String> {
        var letterArray = Array<String>()
        
        while letterArray.count < 14 {
            letterArray.append(randomLetter())
        }
        
        return letterArray
    }
    
    private func randomLetter() -> String {
        let randomIndex = Int(arc4random_uniform(UInt32(alphabet.count)))
        let letter = alphabet[randomIndex]
        return letter

    }
    
}

