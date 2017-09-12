//
//  ScheduleDetailView.swift
//  PVH Exercise 1
//
//  Created by Emre Delibasi on 9/8/17.
//  Copyright © 2017 PVH. All rights reserved.
//

import UIKit

class ScheduleDetailView: UIView {

    let inputLabel = UILabel()
    let inputTextField = UITextField()
    
    init(inputText: String) {
        inputLabel.text = inputText
        super.init(frame: .zero)
        
        addSubviews()
        customizeSubviews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addSubviews() {
        self.addSubview(inputLabel)
        self.addSubview(inputTextField)
    }
    
    func customizeSubviews() {
        inputLabel.font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightMedium)
        inputLabel.textColor = .black
        inputLabel.translatesAutoresizingMaskIntoConstraints = false
        inputLabel.sizeToFit()
        
        inputTextField.font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightMedium)
        inputTextField.textColor = .black
        inputTextField.borderStyle = .none
        inputTextField.textAlignment = .right
        inputTextField.translatesAutoresizingMaskIntoConstraints = false
    }

    func setupConstraints() {
        let leftLabelVerticalConstraint = NSLayoutConstraint(item: inputLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        let leftLabelHorizontalConstraint = NSLayoutConstraint(item: inputLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 30)
        
        let rightLabelWidthConstraint = NSLayoutConstraint(item: inputTextField, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: self.frame.width / 3)
        let rightLabelTopConstraint = NSLayoutConstraint(item: inputTextField, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0)
        let rightLabelBottomConstraint = NSLayoutConstraint(item: inputTextField, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
        let rightLabelHorizontalConstraint = NSLayoutConstraint(item: inputTextField, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -30)
        
        self.addConstraints([leftLabelVerticalConstraint, leftLabelHorizontalConstraint, rightLabelWidthConstraint, rightLabelTopConstraint, rightLabelBottomConstraint, rightLabelHorizontalConstraint])
    }
}
