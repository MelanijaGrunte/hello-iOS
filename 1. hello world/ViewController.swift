//
//  ViewController.swift
//  1. hello world
//
//  Created by Melanija Grunte on 03/07/2017.
//  Copyright © 2017 Melanija Grunte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func loadView() {
        view = UIView()
        
        view.backgroundColor = UIColor.black
        
        
        view.addSubview(button)
        button.u = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("World", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(ViewController.tap), for: .touchUpInside)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 87)
        return button
    }()
    
    
    func tap() {
        button.setTitle("Mela", for: .normal)
    }
}

