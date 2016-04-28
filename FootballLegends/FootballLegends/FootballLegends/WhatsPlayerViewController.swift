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
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var lettersSet = Set<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lettersSet = getSetOfRandomLetters(numberOfLetters)
        var views = Array<UIView>()
        let view1 = LetterView.createView()
        view1.frame = CGRectMake(0, 0, 30, 30)
        let view2 = LetterView.createView()
        view2.frame = CGRectMake(view1.frame.origin.x + view1.frame.size.width + 8, 0, 30, 30)
        views.append(view1)
        views.append(view2)
        var totalWidth = 0.0 as CGFloat
        for _ in views {
            totalWidth += 38
        }
        
        let sx = (view.frame.size.width / 2) - (totalWidth / 2)
        let sview = UIView.init(frame: CGRectMake(sx, 240, totalWidth, 30))
        for view in views {
            sview.addSubview(view)
        }
        view.addSubview(sview)
        
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
        let letterArray = Array(lettersSet)
        let letter = letterArray[indexPath.row]
        cell.setLetter(letter)
        return cell
    }
// MARK: IBActions
    @IBAction func backAction(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
// MARK: Private methods
    private func getSetOfRandomLetters(count : Int) -> Set<String> {
        var lettersSet = Set<String>()
        
        while lettersSet.count < 14 {
            lettersSet.insert(randomLetter())
        }
        
        return lettersSet
    }
    
    private func randomLetter() -> String {
        let randomIndex = Int(arc4random_uniform(UInt32(alphabet.count)))
        let letter = alphabet[randomIndex]
        return letter

    }
    
}

