//
//  screen2_ViewController.swift
//  test_2
//
//  Created by Vo Minh Hoang on 1/12/20.
//  Copyright © 2020 Vo Minh Hoang. All rights reserved.
//

import UIKit

class screen2_ViewController: UIViewController {
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var screen2Button: UIButton!
    var biendb_2:UserDefaults=UserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text=biendb_2.value(forKey: "data") as! String
        // Do any additional setup after loading the view.
    }
    @IBAction func showScreen1ButtonAction(_ sender: Any) {
        let scr = storyboard?.instantiateViewController(withIdentifier: "screen_1") as! screen1_ViewController
        
        present(scr, animated: false, completion: nil)
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
