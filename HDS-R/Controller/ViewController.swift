//
//  ViewController.swift
//  HDS-R
//
//  Created by 池澤勇登 on 2020/07/27.
//  Copyright © 2020 yuto ikezawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
          self.navigationController?.isNavigationBarHidden = true
        
    }

    @IBAction func stratQ(_ sender: Any) {
        performSegue(withIdentifier: "Q1", sender: nil)
    }
    
    
   
    @IBAction func explanation(_ sender: Any) {
        performSegue(withIdentifier: "explanation", sender: nil)
    }
    
}

