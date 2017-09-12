//
//  ViewController.swift
//  PVH Exercise 1
//
//  Created by Emre Delibasi on 9/8/17.
//  Copyright © 2017 PVH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var datePicker: UIDatePicker!
    var startDateView: ScheduleDetailView!
    var endDateView: ScheduleDetailView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureDatePicker()
        configureDetailViews()
        configureNavigationBar()
    }
    
    // MARK: - Setup & Configuration
    func configureDatePicker() {
        datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.minimumDate = Date()
    }
    
    func configureDetailViews() {
        startDateView = ScheduleDetailView(inputText: "Begin:")
        endDateView = ScheduleDetailView(inputText: "End Date:")
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white, NSFontAttributeName: UIFont.systemFont(ofSize: 18, weight: UIFontWeightBold)]
        navigationController?.navigationBar.topItem?.title = "Schedule"
        navigationController?.navigationBar.barStyle = .black
    }

}

