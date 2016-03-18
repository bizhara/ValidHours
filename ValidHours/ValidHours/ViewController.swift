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
        hour = HourChecker.validHour1(hour: hour)
        sender.setTitle(String(hour), forState: .Normal)
    }
    
    @IBAction func incrementHour2(sender: UIButton) {
        var hour: Int = Int(sender.titleLabel!.text!)!
        hour = HourChecker.validHour2(hour: hour)
        sender.setTitle(String(hour), forState: .Normal)
    }
    
    @IBAction func checkHours(sender: UIButton) {
        func hourValueFrom(hour1 hour1_: UIButton, hour2 hour2_: UIButton) -> Int {
            return (Int(hour1_.titleLabel!.text!)! * 10) + Int(hour2_.titleLabel!.text!)!
        }
        
        let startHour = hourValueFrom(hour1: self.startHour1, hour2: self.startHour2)
        let endHour = hourValueFrom(hour1: self.endHour1, hour2: self.endHour2)
        let targetHour = hourValueFrom(hour1: self.targetHour1, hour2: self.targetHour2)
        
        self.resultPanel.text = (HourChecker.isValidHours(startHour: startHour, endHour: endHour, targetHour: targetHour)) ? "OK" : "NG"
    }
    
    @IBOutlet private weak var controllersFrame: UIView!
    @IBOutlet private weak var startHour1: UIButton!
    @IBOutlet private weak var startHour2: UIButton!
    @IBOutlet private weak var endHour1: UIButton!
    @IBOutlet private weak var endHour2: UIButton!
    @IBOutlet private weak var targetHour1: UIButton!
    @IBOutlet private weak var targetHour2: UIButton!
    @IBOutlet private weak var checkHours: UIButton!
    @IBOutlet private weak var resultPanel: UILabel!
}

