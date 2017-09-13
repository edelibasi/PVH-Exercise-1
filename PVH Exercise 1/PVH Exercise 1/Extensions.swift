//
//  Extensions.swift
//  PVH Exercise 1
//
//  Created by Emre Delibasi on 9/12/17.
//  Copyright © 2017 PVH. All rights reserved.
//

import Foundation
import UIKit

extension DateFormatter {
    convenience init(dateFormat: String) {
        self.init()
        self.dateFormat =  dateFormat
    }
}

extension Date {
    var stringValue: String {
        let dateFormatter = DateFormatter(dateFormat: "dd MMMM yyyy")
        return self == Date() ? "Today" : dateFormatter.string(from: self)
    }
    
    func addingDays(_ days: Int) -> Date? {
        var dateComponents = DateComponents()
        dateComponents.day = days
        return Calendar.current.date(byAdding: dateComponents, to: self)
    }
}
