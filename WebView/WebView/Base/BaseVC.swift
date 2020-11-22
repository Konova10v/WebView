//
//  BaseVC.swift
//  WebView
//
//  Created by Кирилл Коновалов on 22.11.2020.
//

import UIKit

class BaseVC: UIViewController {
    var v: BaseView! { return self.view as? BaseView }
    
    private var _state : [String: Any?] = [:]
    public var state : [String: Any?] {
        get { _state}
        set {
            _state = newValue
            v.getState = { [weak self] in self?.state ?? [:]}
            v.render()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
