//
//  resultViewController.swift
//  HDS-R
//
//  Created by 池澤勇登 on 2020/07/28.
//  Copyright © 2020 yuto ikezawa. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    var correctCount = Int()
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var hanteiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "結果は\(correctCount)点です"

        if correctCount >= 20{
            hanteiLabel.text = "異常はありません"
        }else if correctCount <= 19 && correctCount >= 16{
            hanteiLabel.text = "認知症の疑いがあります"
        }else if correctCount >= 11 && correctCount <= 15{
            hanteiLabel.text = "中等度の認知症が疑われます"
        }else if correctCount <= 10 && correctCount >= 5{
            hanteiLabel.text = "やや高度の認知症が疑われます"
        }else if correctCount <= 4{
            hanteiLabel.text = "重度の認知症が疑われます"
        }
        
      
        
    }
    
    
    
    
    @IBAction func home(_ sender: Any) {
         self.navigationController?.popToRootViewController(animated: true)
    }
    
  

}
