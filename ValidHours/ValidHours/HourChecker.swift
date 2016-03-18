//
//  HourChecker.swift
//  ValidHours
//
//  Created by hara on 2016/03/18.
//  Copyright © 2016年 com.mac.khara. All rights reserved.
//

class HourChecker {
    class func nextHour1(hour hour_: Int) -> Int {
        return ((hour_ >= 0) && (hour_ <= 1)) ? hour_ + 1 : 0
    }
    
    class func nextHour2(hour hour_: Int) -> Int {
        return ((hour_ >= 0) && (hour_ <= 8)) ? hour_ + 1 : 0
    }
    
    class func isValidHours(startHour startHour_: Int, endHour endHour_: Int, targetHour targetHour_: Int) -> Bool {
        if (endHour_ > startHour_) {
            return (targetHour_ >= startHour_) && (targetHour_ < endHour_)
        } else if (endHour_ < startHour_) {
            return (targetHour_ >= startHour_) || (targetHour_ < endHour_)
        } else {
            return false
        }
    }
}
