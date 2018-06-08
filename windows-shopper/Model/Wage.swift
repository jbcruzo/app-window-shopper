//
//  Wage.swift
//  windows-shopper
//
//  Created by Juan Bernardo Cruz Ortiz on 6/7/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}

