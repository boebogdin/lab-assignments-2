//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Boe Bogdin on 12/6/2022
//  Copyright © 2022 Boe Bogdin. All rights reserved.
//

// Correspond to keys returned by the API under categories
struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
