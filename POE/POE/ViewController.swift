//
//  ViewController.swift
//  POE
//
//  Created by Brandon Kueker on 6/18/15.
//  Copyright (c) 2015 Brandon Kueker. All rights reserved.
//

import UIKit

func valueRGB(number: Int) -> CGFloat {
    
    var colorValue = Double(number) / 255.0
    
    return CGFloat(floor(100*colorValue)/100)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

