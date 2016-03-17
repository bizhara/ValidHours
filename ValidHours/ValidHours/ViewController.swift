//
//  ViewController.swift
//  ValidHours
//
//  Created by hara on 2016/03/17.
//  Copyright © 2016年 com.mac.khara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleExecutable") as? String
        
        self.controllersFrame.addFrame(frameThickness: 1, frameColor: UIColor.lightGrayColor())
        UIView.addFrame(toViews: [self.startHour1, self.startHour2, self.endHour1, self.endHour2, self.targetHour1, self.targetHour2, self.checkHours],
            frameThickness: 1, frameColor: UIColor.lightGrayColor(), frameCorner: 6)
    }
    
    @IBOutlet private weak var controllersFrame: UIView!
    @IBOutlet private weak var startHour1: UIButton!
    @IBOutlet private weak var startHour2: UIButton!
    @IBOutlet private weak var endHour1: UIButton!
    @IBOutlet private weak var endHour2: UIButton!
    @IBOutlet private weak var targetHour1: UIButton!
    @IBOutlet private weak var targetHour2: UIButton!
    @IBOutlet private weak var checkHours: UIButton!
}

