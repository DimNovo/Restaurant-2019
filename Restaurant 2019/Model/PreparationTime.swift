//
//  PreparationTime.swift
//  Restaurant 2019
//
//  Created by Dmitry Novosyolov on 14/04/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

struct PreparationTime: Codable
{
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey
    {
        case prepTime = "preparation_time"
    }
}
