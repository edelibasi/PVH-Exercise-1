//
//  ScheduleDetailView.swift
//  PVH Exercise 1
//
//  Created by Emre Delibasi on 9/8/17.
//  Copyright © 2017 PVH. All rights reserved.
//

import UIKit

class ScheduleDetailView: UIView {

    let leftLabel = UILabel()
    let rightLabel = UILabel()
    
    init(leftText: String) {
        leftLabel.text = leftText
        super.init(frame: .zero)
        
        addSubviews()
        customizeLabels()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addSubviews() {
        self.addSubview(leftLabel)
        self.addSubview(rightLabel)
    }
    
    func customizeLabels() {
        leftLabel.font = UIFont.systemFont(ofSize: 18, weight: UIFontWeightMedium)
        leftLabel.textColor = .black
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        leftLabel.sizeToFit()
        
        rightLabel.font = UIFont.systemFont(ofSize: 18, weight: UIFontWeightMedium)
        rightLabel.textColor = .black
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightLabel.sizeToFit()
    }

    func setupConstraints() {
        let leftLabelVerticalConstraint = NSLayoutConstraint(item: leftLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        let leftLabelHorizontalConstraint = NSLayoutConstraint(item: leftLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 30)
        
        let rightLabelVerticalConstraint = NSLayoutConstraint(item: rightLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        let rightLabelHorizontalConstraint = NSLayoutConstraint(item: rightLabel, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -30)
        
        self.addConstraints([leftLabelVerticalConstraint, leftLabelHorizontalConstraint, rightLabelVerticalConstraint, rightLabelHorizontalConstraint])
    }
}
