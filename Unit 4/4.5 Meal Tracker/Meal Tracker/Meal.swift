//
//  Meal.swift
//  Meal Tracker
//
//  Created by Boe Bogdin on 10/17/2022.
//  Copyright © 2022 Boe Bogdin. All rights reserved.
//

import Foundation

struct Meal {
    var name: String
    var food: [Food]
    
    init(name: String, food: [Food]) {
        self.name = name
        self.food = food
    }
}
