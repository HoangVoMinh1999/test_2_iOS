//
//  ViewController.swift
//  test_2
//
//  Created by Vo Minh Hoang on 1/11/20.
//  Copyright © 2020 Vo Minh Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var engineSwitch: UISwitch!
    
    var timer:Timer!
    var goc:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image=UIImage(named: "Unknown")
        engineSwitch.isOn=false
    }

    @IBAction func engineSwitchAction(_ sender: Any) {
        if engineSwitch.isOn{
            timer=Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true, block: { (timer) in
                self.goc+=5
                self.imageView.transform=CGAffineTransform(rotationAngle: CGFloat(self.goc))
            })
        }
        else{
            timer.invalidate()
            timer=nil
        }
    }
    
}

