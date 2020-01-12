//
//  webViewController.swift
//  test_2
//
//  Created by Vo Minh Hoang on 1/12/20.
//  Copyright © 2020 Vo Minh Hoang. All rights reserved.
//

import UIKit

class webViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let url:URL=URL(string: "https://www.google.com/")!
        let req:URLRequest=URLRequest(url:url)
        webView.loadRequest(req)
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
