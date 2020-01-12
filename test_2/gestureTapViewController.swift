//
//  gestureTapViewController.swift
//  test_2
//
//  Created by Vo Minh Hoang on 1/12/20.
//  Copyright © 2020 Vo Minh Hoang. All rights reserved.
//

import UIKit

class gestureTapViewController: UIViewController {
    @IBAction func gestureTap(_ sender: Any) {
        let tap : UIGestureRecognizer = sender as! UIGestureRecognizer
        let img:UIImageView = UIImageView()
        img.image=UIImage(named: "Unknown")
        img.frame.size=CGSize(width: 50, height: 50)
        img.center=tap.location(in: view)
        view.addSubview(img)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
