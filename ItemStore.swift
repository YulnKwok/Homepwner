//
//  ItemStore.swift
//  Homepwner
//
//  Created by 郭钰麟 on 16/3/13.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit

class ItemStore{
    var allItems = [Item]()
    
    func creatItem()->Item{
        let newItem = Item.init(random:true)
        allItems.append(newItem)
        return newItem
    }
    
}
