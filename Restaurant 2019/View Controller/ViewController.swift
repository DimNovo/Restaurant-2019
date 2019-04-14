//
//  ViewController.swift
//  Restaurant 2019
//
//  Created by Dmitry Novosyolov on 14/04/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MenuController.shared.fetchCategories { categories in
            guard let categories = categories else {
                print(#line, #function, "Category list is empty")
                return }
            print(#line, #function, categories, "\n")
            
            var menuIds = [Int]()
            
            for category in categories
            {
                MenuController.shared.fetchMenuItems(forCategory: category, completion: { menuItems in
                    guard let menuItems = menuItems else {
                        print(#line, #function, "Menu Items are absent")
                        return }
                    
                    menuIds += menuItems.map { $0.id }
                    
                    MenuController.shared.submitOrder(forMenuIDs: menuIds, completion: { time in
                        guard let time = time else {
                            print(#line, #function, "Order time is nil")
                            return }
                        
                        print(#line, #function, time)
                    })
                    
                    print(#line, #function, menuItems)
                })
            }
        }
    }
}

