//
//  ViewController.swift
//  HelloWorldInIOS
//
//  Created by Harry Woodworth on 1/28/19.
//  Copyright © 2019 Harry Woodworth. All rights reserved.
//
//  References:
//      https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/ConnectTheUIToCode.html#//apple_ref/doc/uid/TP40015214-CH22-SW1
//      https://stackoverflow.com/questions/22561926/ios-text-to-speech-api
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var speakTextField: UITextField!
    @IBOutlet weak var speakButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

