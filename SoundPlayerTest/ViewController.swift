//
//  ViewController.swift
//  SoundPlayerTest
//
//  Created by hideyuki on 2016/09/03.
//  Copyright © 2016年 hideyuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressTap(sender: AnyObject) {
        SoundFileType.tapbutton.play()
    }
    
    @IBAction func pressErr(sender: AnyObject) {
        SoundFileType.err.play()
    }
    
    @IBAction func pressBack(sender: AnyObject) {
        SoundFileType.back.play()
    }
}

