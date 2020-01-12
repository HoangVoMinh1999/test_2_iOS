//
//  screen1_ViewController.swift
//  test_2
//
//  Created by Vo Minh Hoang on 1/12/20.
//  Copyright © 2020 Vo Minh Hoang. All rights reserved.
//

import UIKit

class screen1_ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    var biendb_1:UserDefaults=UserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func enterButtonAction(_ sender: Any) {
        let src=storyboard?.instantiateViewController(withIdentifier: "screen_2") as! screen2_ViewController
        biendb_1.set(nameTextField.text, forKey: "data")
        present(src, animated: false, completion: nil)
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
