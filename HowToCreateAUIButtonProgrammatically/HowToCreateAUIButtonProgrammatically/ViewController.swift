//
//  ViewController.swift
//  HowToCreateAUIButtonProgrammatically
//
//  Created by James Rea Taylor on 13/02/2019.
//  Copyright © 2019 James Rea Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let customButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Custom Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = UIColor.darkGray
        button.layer.borderWidth = 3
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.lightGray.cgColor
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Adds the UIButton to the view
        view.addSubview(customButton)
        
        // Places the UIButton to the center of the view
        customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Makes the button width 300 and height 60
        customButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        customButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Autolayout will not work without setting this to false
        customButton.translatesAutoresizingMaskIntoConstraints = false
    }
}


