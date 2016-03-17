//
//  UIView.extension.swift
//  ValidHours
//
//  Created by hara on 2016/03/17.
//  Copyright © 2016年 com.mac.khara. All rights reserved.
//

import UIKit

extension UIView {
    func addFrame(frameThickness frameThickness_: CGFloat, frameColor frameColor_: UIColor) {
        self.addFrame(frameThickness: frameThickness_, frameColor: frameColor_, frameCorner: 0)
    }
    
    func addFrame(frameThickness frameThickness_: CGFloat, frameColor frameColor_: UIColor, frameCorner frameCorner_: CGFloat) {
        self.layer.borderWidth = frameThickness_
        self.layer.borderColor = frameColor_.CGColor
        self.layer.cornerRadius = frameCorner_
    }
    
    class func addFrame(toViews toViews_: [UIView], frameThickness frameThickness_: CGFloat, frameColor frameColor_: UIColor) {
        self.addFrame(toViews: toViews_, frameThickness: frameThickness_, frameColor: frameColor_, frameCorner: 0)
    }
    
    class func addFrame(toViews toViews_: [UIView], frameThickness frameThickness_: CGFloat, frameColor frameColor_: UIColor, frameCorner frameCorner_: CGFloat) {
        for view in toViews_ {
            view.addFrame(frameThickness: frameThickness_, frameColor: frameColor_, frameCorner: frameCorner_)
        }
    }
}
