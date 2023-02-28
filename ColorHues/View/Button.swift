//
//  Button.swift
//  ColorHues
//
//  Created by Ethan Gonsalves on 2023-02-27.
//

import UIKit

class Button: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure() {
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 14, weight: .bold, scale: .large)
        let largeBoldDoc = UIImage(systemName: "heart.fill", withConfiguration: largeConfig)?.withTintColor(.white, renderingMode: .alwaysOriginal)
     
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 5
        setTitleColor(.white, for: .normal)
        setTitle("  Collection", for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        setImage(largeBoldDoc, for: .normal)
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 3
    }
        
}
