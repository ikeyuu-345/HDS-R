//
//  Q6ViewController.swift
//  HDS-R
//
//  Created by 池澤勇登 on 2020/07/27.
//  Copyright © 2020 yuto ikezawa. All rights reserved.
//

import UIKit

class Q6ViewController: UIViewController {
    var correctCount = Int()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
            correctCount += 1
            print("正解です")
            performSegue(withIdentifier: "Q7", sender: nil)
            }else if (sender as AnyObject).tag == 0{
                print("不正解です")
                performSegue(withIdentifier: "Q7", sender: nil)
            }else if (sender as AnyObject).tag == 2{
                correctCount += 2
                print("正解2です")
                performSegue(withIdentifier: "Q7", sender: nil)
                    }
                }
               
                      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                          let Q7VC = segue.destination as! Q7ViewController
                          Q7VC.correctCount = correctCount
                      }

        
        
        
    }
    
  

