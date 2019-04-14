//
//  Order.swift
//  Restaurant 2019
//
//  Created by Dmitry Novosyolov on 14/04/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//


struct Order: Codable
{
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = [])
    {
        self.menuItems = menuItems
    }
}
