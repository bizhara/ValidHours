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
    }
}

