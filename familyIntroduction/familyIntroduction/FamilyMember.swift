//
//  populace.swift
//  familyIntroduction
//
//  Created by Boe Bogdin on 9/23/22.
//

import Foundation


struct FamilyMember {

    var name: String
    var description: String
    
    
    static let familyMembers: [FamilyMember] = [mom, dad, me, tiffany, hallie, lindsey, mayzie, family]
    
    static let mom = FamilyMember(name: "Mom", description: "I like her and she take care of me.")

    static let dad = FamilyMember(name: "Dad", description: "My Dad ")

    static let me = FamilyMember(name: "Boe", description: "My name is Boe. I love working with computers to program a smart phones and playing video games. My favorite Superhero from marvel is Spider-Man! I have a 4 siblings, I have no brothers.")
    
    static let tiffany = FamilyMember(name: "Tiffany" , description: "Tiffany is like a Cookie moster and Minnion!")

    static let hallie = FamilyMember(name: "Hallie", description: "She like a Princess and the Frog a Tiana from Disney Princess that her favorite")

    static let lindsey = FamilyMember(name: "Lindsey", description: "Lindsey favorite Princess is Repunzel from Disney Princess")

    static let mayzie = FamilyMember(name: "Mayzie", description: "Mayzie like a Miraculous and her favorite characters is Alya a Orange Fox Miraculors")

    static let family = FamilyMember(name: "family", description: "My family is awesome, we went to Vacation to have a party!! ")

}



