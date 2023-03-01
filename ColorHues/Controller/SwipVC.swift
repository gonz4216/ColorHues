//
//  ViewController.swift
//  ColorHues
//
//  Created by Ethan Gonsalves on 2023-02-27.
//

import UIKit

class SwipVC: UIViewController {
    
    
    let button = Button()
    let label = Label(textAlignment: .center, fontSize: 38)
    override func viewDidLoad() {
        super.viewDidLoad()
        let call = NetworkManager()
        call.callAPI()
        view.backgroundColor = .systemGray6
        configureLabel()
        configureButton()
    }
    func configureLabel() {
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
    }
    func configureButton() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            button.heightAnchor.constraint(equalToConstant: 50)
            
            
        ])
    }
    
}

