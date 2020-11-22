//
//  BaseView.swift
//  WebView
//
//  Created by Кирилл Коновалов on 22.11.2020.
//

import UIKit

class BaseView: UIView {
    public var getState: () -> Dictionary<String, Any?> = {[:]}
    
    var state: [String: Any?] {
        return getState()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUI()
    }
    
    func customizeUI() {
    }
    
    func render() {
    }
}
