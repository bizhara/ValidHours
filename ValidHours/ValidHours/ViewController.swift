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
    
    @IBAction func checkHours(sender: UIButton) {
        let startHour = (Int(self.startHour1.titleLabel!.text!)! * 10) + Int(self.startHour2.titleLabel!.text!)!
        let endHour = (Int(self.endHour1.titleLabel!.text!)! * 10) + Int(self.endHour2.titleLabel!.text!)!
        let targetHour = (Int(self.targetHour1.titleLabel!.text!)! * 10) + Int(self.targetHour2.titleLabel!.text!)!
        
        self.resultPanel.text = (self.isValidHour(startHour: startHour, endHour: endHour, targetHour: targetHour)) ? "OK" : "NG"
    }
    
    private func isValidHour(startHour startHour_: Int, endHour endHour_: Int, targetHour targetHour_: Int) -> Bool {
        return (startHour_ != endHour_) && ((targetHour_ >= startHour_) || (targetHour_ < endHour_))
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

