//
//  Label.swift
//  ColorHues
//
//  Created by Ethan Gonsalves on 2023-02-27.
//

import UIKit

class Label: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        text = "ColorHues"
        textColor = .white
        
        
   
/*========== Copilot Suggestion 1/1
  ^     minimumScaleFactor = 0.9
        
*///======== End of Copilot Suggestion
        
        textAlignment = .center
        numberOfLines = 0
        font = UIFont.preferredFont(forTextStyle: .title2)
    
    }
}
