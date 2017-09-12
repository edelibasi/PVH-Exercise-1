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
