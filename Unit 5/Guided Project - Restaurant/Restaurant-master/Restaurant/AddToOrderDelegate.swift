//
//  AddToOrderDelegate.swift
//  Restaurant
//
//  Created by Boe Bogdin on 12/6/2022
//  Copyright © 2022 Boe Bogdin. All rights reserved.
//
//  Protocol for adding items to the order

protocol AddToOrderDelegate {
    /// Called when menu item is added
    func added(menuItem: MenuItem)
}
