//
//  ViewController.swift
//  dogApiLab
//
//  Created by Boe Bogdin on 12/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageOfDog: UIImageView!
    let dogClass = DogClass()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func newDogButton(_ sender: UIButton) {
        do {
            Task {
                let dog = try await dogClass.dogRequest()
                let dogData = try await dogClass.fetchImage(dog: dog)
                
                if let dogData = dogData {
                    imageOfDog.image = UIImage(data: dogData)
                }
            } 
            
            
        }
        
    }
    
}
