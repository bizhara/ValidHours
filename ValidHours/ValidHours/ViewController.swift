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
    
    @IBAction func incrementHour1(sender: UIButton) {
        var hour: Int = Int(sender.titleLabel!.text!)!
        if ((hour >= 0) && (hour <= 1)) {
            hour = hour + 1
        } else {
            hour = 0
        }
        sender.setTitle(String(hour), forState: .Normal)
    }
    
    @IBAction func incrementHour2(sender: UIButton) {
        var hour: Int = Int(sender.titleLabel!.text!)!
        if ((hour >= 0) && (hour <= 8)) {
            hour = hour + 1
        } else {
            hour = 0
        }
        sender.setTitle(String(hour), forState: .Normal)
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

