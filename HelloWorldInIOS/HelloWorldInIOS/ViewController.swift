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
//      https://stackoverflow.com/questions/26195262/how-to-create-a-global-variable
//      https://developer.apple.com/documentation/avfoundation/avspeechutterance/1619708-rate
//
//

import UIKit
import AVFoundation // Imcluded for AVSpeechSynthesizer

class ViewController: UIViewController {
    
    //MARK: Struct
    struct SpeechSynthesizer
    {
        static var synthesizer = AVSpeechSynthesizer()
    }
    
    //MARK: Properties
    @IBOutlet weak var speakTextField: UITextField!
    @IBOutlet weak var speakButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: Actions
    // Activate text to speech with the text in speakTextField
    @IBAction func speakUtterance(_ sender: UIButton)
    {
        // Create the utterance using speakTextField
        let utterance = AVSpeechUtterance(string : speakTextField.text!)
        
        // Set the rate at which the text is spoken
        utterance.rate = 0.3
        
        // Speak
        SpeechSynthesizer.synthesizer.speak(utterance)
    }
    
}

