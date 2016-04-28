//
//  LetterViewBuilder.swift
//  FootballLegends
//
//  Created by Roman Sakhnievych on 4/28/16.
//  Copyright © 2016 Roman Sakhnievych. All rights reserved.
//

import UIKit

class LetterViewBuilder: NSObject {
    
    var letterViews = Array<LetterView>()
    var viewsCount = 0
    
    init(numberOfViews: Int) {
        super.init()
        viewsCount = numberOfViews
        initViewsArray(numberOfViews)
    }
    
// MARK: Private methods
    private func buildLetterView(frame : CGRect) -> LetterView {
        let view = LetterView.createView() as! LetterView
        view.frame = frame
        return view
    }
    
    private func initViewsArray(numberOfViews: Int) {
        var previousX = 0 as CGFloat
        for _ in 0...numberOfViews {
            let rect = CGRectMake(previousX, 0, 30, 30)
            let view = buildLetterView(rect) as LetterView
            letterViews.append(view)
            previousX = view.frame.origin.x + 38
        }
    }
    
// MARK: Public method
    func getLetterViewsInSuperviewRect(superviewRect: CGRect, underTheViewRect viewRect: CGRect) -> UIView {
        var totalWidth = 0.0 as CGFloat
        for _ in letterViews {
            totalWidth += 38
        }
        
        let sx = (superviewRect.size.width / 2) - (totalWidth / 2)
        let superview = UIView.init(frame: CGRectMake(sx, viewRect.origin.y + viewRect.size.height + 20, totalWidth, 30))
        for view in letterViews {
            superview.addSubview(view)
        }
        return superview
    }

}
