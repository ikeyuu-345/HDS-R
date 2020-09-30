//
//  Q1ViewController.swift
//  HDS-R
//
//  Created by 池澤勇登 on 2020/07/27.
//  Copyright © 2020 yuto ikezawa. All rights reserved.
//

import UIKit

class Q1ViewController: UIViewController {
    var correctCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    
    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
            correctCount += 1
            print("正解です")
            performSegue(withIdentifier: "Q2", sender: nil)
            
            
        }else if (sender as AnyObject).tag == 0{
            print("不正解です")
            performSegue(withIdentifier: "Q2", sender: nil)
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Q2VC = segue.destination as! Q2ViewController
        Q2VC.correctCount = correctCount
    }

   
}
