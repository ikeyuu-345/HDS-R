//
//  netViewController.swift
//  HDS-R
//
//  Created by 池澤勇登 on 2020/09/17.
//  Copyright © 2020 yuto ikezawa. All rights reserved.
//

import UIKit
import WebKit

class netViewController: UIViewController {
    
    var webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        var url = URL(string: "https://ja.wikipedia.org/wiki/%E9%95%B7%E8%B0%B7%E5%B7%9D%E5%BC%8F%E8%AA%8D%E7%9F%A5%E7%97%87%E3%82%B9%E3%82%B1%E3%83%BC%E3%83%AB")
        var request = URLRequest(url: url!)
        webView.load(request)
        view.addSubview(webView)
        

      
    }
    


}
