//
//  HtmlArticleView.swift
//  WebView
//
//  Created by Кирилл Коновалов on 22.11.2020.
//

import UIKit
import WebKit

class HtmlArticleView: BaseView {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var pastPageBtn: UIButton!
    
    override func customizeUI() {
        pastPageBtn.isHidden = true
    }
    
    override func render() {
        if (state["history"] as! [String]).count <= 1 {
            pastPageBtn.isHidden = true
        } else {
            pastPageBtn.isHidden = false
        }
        
        let request = URLRequest(url: URL(string: (state["history"] as! [String]).last ?? "")!)
        webView.load(request)
        super.render()
    }
}
