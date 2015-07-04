//
//  Model.swift
//  cdfYo
//
//  Created by Kyle on 7/3/15.
//  Copyright (c) 2015 Ivan Aguilar. All rights reserved.
//

import Foundation
import Darwin

func Gaussian(x: Double) -> Double {
    let pi = 3.14159267
    let e = 2.71828
    let sigma = 1.0
    var ravr = 1.0/sqrt(2.0*pi) * pow(e, -pow(x,2.0)/2.0)
    return ravr
}

func CDF(x: Double) -> Double {
    var sum = 0.0
    let dx = 1.0/2000.0 * (10.0+x)
    for var n = 0; n < 2000; n++
    {
        var x_hat = -10.0 + dx*Double(n)
        sum += Gaussian(x_hat) * dx
    }
    return sum
}

