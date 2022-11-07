//
//  ViewController.swift
//  4.2 App Anatomy and Life Cycle
//
//  Created by Boe Bogdin on 10/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var didDisconnectLabel: UILabel!
    
    var willConnectCount = 0
    var willResignActiveCount = 0
    var didEnterBackgroundCount = 0
    var willEnterForegroundCount = 0
    var didBecomeActiveCount = 0
    var didDisconnectCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        willConnectLabel.text = "The scene has connected \(willConnectCount) times"
        willResignActiveLabel.text = "Scene Will resign Active has been called \(willResignActiveCount) times"
        didEnterBackgroundLabel.text = "Scene Did Enter Background has been called \(didEnterBackgroundCount) times"
        willEnterForegroundLabel.text = "Scene Will Enter Foreground has been called \(willEnterForegroundCount) times"
        didBecomeActiveLabel.text = "Scene Did Become Active has been called \(didBecomeActiveCount) times"
        
        didDisconnectLabel.text = "Scene Did Disconnect has been called \(didDisconnectCount) times"
    }
    


}

