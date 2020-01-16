//
//  screen2_ViewController.swift
//  test_2
//
//  Created by Vo Minh Hoang on 1/12/20.
//  Copyright © 2020 Vo Minh Hoang. All rights reserved.
//

import UIKit

class screen2_ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    
    //---Outlet
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var screen2Button: UIButton!
    @IBOutlet weak var genderPickerView: UIPickerView!
    @IBOutlet weak var resultPickerView: UILabel!
    //---Paramater
    var biendb_2:UserDefaults=UserDefaults()
    var arrData:Array<[String]>=[["Male", "Female","Other"],["Vo Minh Hoang","Le Ngoc Bao Tran","Vo Hoang Ngoc","Nguyen Thien Bao"]]
    //---Action
    @IBAction func showScreen1ButtonAction(_ sender: Any) {
        let scr = storyboard?.instantiateViewController(withIdentifier: "screen_1") as! screen1_ViewController
        
        present(scr, animated: false, completion: nil)
    }
    //---------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text=biendb_2.value(forKey: "data") as! String
        genderPickerView.delegate=self
        genderPickerView.dataSource=self
        // Do any additional setup after loading the view.
    }
    //---Function
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return arrData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrData[component].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrData[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        resultPickerView.text=arrData[component][row]
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
