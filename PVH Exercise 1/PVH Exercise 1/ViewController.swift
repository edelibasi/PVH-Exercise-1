//
//  ViewController.swift
//  PVH Exercise 1
//
//  Created by Emre Delibasi on 9/8/17.
//  Copyright © 2017 PVH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let datePicker = UIDatePicker()
    let startDateView = ScheduleDetailView(leftText: "Begin:")
    let endDateView = ScheduleDetailView(leftText: "End Date:")
    let dateFormatter = DateFormatter(dateFormat: "dd MMMM yyyy")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        configureDatePicker()
        configureDetailViews()
        configureNavigationBar()
        setupConstraints()
    }
    
    // MARK: - Setup & Configuration
    func configureDatePicker() {
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.datePickerMode = .date
        datePicker.minimumDate = Date()
    }

    func configureDetailViews() {
        startDateView.translatesAutoresizingMaskIntoConstraints = false
        endDateView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white, NSFontAttributeName: UIFont.systemFont(ofSize: 18, weight: UIFontWeightBold)]
        navigationController?.navigationBar.topItem?.title = "Schedule"
        navigationController?.navigationBar.barStyle = .black
        
        let clearButton = UIBarButtonItem(title: "Clear", style: .plain, target: self, action: #selector(clearPressed))
        navigationItem.rightBarButtonItem = clearButton
    }
    
    func addSubviews() {
        view.addSubview(startDateView)
        view.addSubview(datePicker)
        view.addSubview(endDateView)
    }
    
    func setupConstraints() {
        let startDateLeadingConstraint = NSLayoutConstraint(item: startDateView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let startDateTrailingConstraint = NSLayoutConstraint(item: startDateView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let startDateTopConstraint = NSLayoutConstraint(item: startDateView, attribute: .top, relatedBy: .equal, toItem: self.topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
        let startDateHeightConstraint = NSLayoutConstraint(item: startDateView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: LayoutConstants.detailViewHeight)
        
        let datePickerLeadingConstraint = NSLayoutConstraint(item: datePicker, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let datePickerTrailingConstraint = NSLayoutConstraint(item: datePicker, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let datePickerTopConstraint = NSLayoutConstraint(item: datePicker, attribute: .top, relatedBy: .equal, toItem: startDateView, attribute: .bottom, multiplier: 1, constant: 0)
        let datePickerHeightConstraint = NSLayoutConstraint(item: datePicker, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: LayoutConstants.datePickerHeight)
        
        let endDateLeadingConstraint = NSLayoutConstraint(item: endDateView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let endDateTrailingConstraint = NSLayoutConstraint(item: endDateView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let endDateTopConstraint = NSLayoutConstraint(item: endDateView, attribute: .top, relatedBy: .equal, toItem: datePicker, attribute: .bottom, multiplier: 1, constant: 0)
        let endDateHeightConstraint = NSLayoutConstraint(item: endDateView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: LayoutConstants.detailViewHeight)

        self.view.addConstraints([startDateLeadingConstraint, startDateTrailingConstraint, startDateTopConstraint, startDateHeightConstraint, datePickerLeadingConstraint, datePickerTrailingConstraint, datePickerTopConstraint, datePickerHeightConstraint, endDateLeadingConstraint, endDateTrailingConstraint, endDateTopConstraint, endDateHeightConstraint])
    }
    
    // MARK: - Actions
    func clearPressed() {
        
    }
}

