//
//  Item.swift
//  Homepwner
//
//  Created by 郭钰麟 on 16/3/13.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit

class Item:NSObject{
    var name:String
    var valueInDollars:Int
    var serialNumber:String?
    let dateCreated:NSDate
    
    var itemStore:ItemStore!
    
    init(name:String,valueInDollars:Int,serialNumber:String?) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = NSDate()
        super.init()
    }
    
    convenience init(random:Bool = false){
        if random{
            let adjs = ["clever","bad","smart"]
            let nouns = ["cat","dog","pig"]
            var idx = arc4random_uniform(UInt32(adjs.count))
            let randomAdj = adjs[Int(idx)]
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            let randomName = "\(randomAdj) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = NSUUID().UUIDString.componentsSeparatedByString("-").first!
            self.init(name:randomName,valueInDollars:randomValue,serialNumber:randomSerialNumber)
        }else{
            self.init(name:"",valueInDollars:0,serialNumber:nil)
        }
    }
}
