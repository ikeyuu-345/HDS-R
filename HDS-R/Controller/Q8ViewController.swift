//
//  Q8ViewController.swift
//  HDS-R
//
//  Created by 池澤勇登 on 2020/07/27.
//  Copyright © 2020 yuto ikezawa. All rights reserved.
//

import UIKit

class Q8ViewController: UIViewController {
    var correctCount = Int()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

       
    }
    

    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
                          correctCount += 1
                          print("正解です")
                          performSegue(withIdentifier: "Q9", sender: nil)
                          
                          
                      }else if (sender as AnyObject).tag == 0{
                          print("不正解です")
                          performSegue(withIdentifier: "Q9", sender: nil)
               
                   }else if (sender as AnyObject).tag == 2{
                   correctCount += 2
                   print("正解2です")
                   performSegue(withIdentifier: "Q9", sender: nil)
                   }else if (sender as AnyObject).tag == 3{
                   correctCount += 3
                   print("正解3です")
                   performSegue(withIdentifier: "Q9", sender: nil)
                   }else if (sender as AnyObject).tag == 4{
                   correctCount += 4
                   print("正解4です")
                   performSegue(withIdentifier: "Q9", sender: nil)
                  }else if (sender as AnyObject).tag == 5{
                   correctCount += 5
                   print("正解3です")
                   performSegue(withIdentifier: "Q9", sender: nil)
                   }
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Q9"{
        let Q9VC = segue.destination as! Q9ViewController
        Q9VC.correctCount = correctCount
        }
    }
    
    
  
    @IBAction func imageShow(_ sender: Any) {
         performSegue(withIdentifier: "image", sender: nil)
    }
    

}
