//
//  memoViewController.swift
//  HDS-R
//
//  Created by 池澤勇登 on 2020/07/29.
//  Copyright © 2020 yuto ikezawa. All rights reserved.
//

import UIKit

class memoViewController: UIViewController,UITextFieldDelegate{
    
    
    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    @IBOutlet weak var TF3: UITextField!
    @IBOutlet weak var TF4: UITextField!
    @IBOutlet weak var TF5: UITextField!
    @IBOutlet weak var TF6: UITextField!
    @IBOutlet weak var TF7: UITextField!
    @IBOutlet weak var TF8: UITextField!
    @IBOutlet weak var TF9: UITextField!
    @IBOutlet weak var TF10: UITextField!
    
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TF1.delegate = self
        TF2.delegate = self
        TF3.delegate = self
        TF4.delegate = self
        TF5.delegate = self
        TF6.delegate = self
        TF7.delegate = self
        TF8.delegate = self
        TF9.delegate = self
        TF10.delegate = self
       
        

      
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
