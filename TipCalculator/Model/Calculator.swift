//
//  Calculator.swift
//  TipCalculator
//
//  Created by Devin Flora on 2/8/21.
//

import Foundation

class Calculator {
    var baseTotal: Float
    var numberOfPeople: Int
    var tipPercentage: Float
    
    init(baseTotal: Float, numberOfPeople: Int, tipPercentage: Float) {
        self.baseTotal = baseTotal
        self.numberOfPeople = numberOfPeople
        self.tipPercentage = tipPercentage
    }
}//End of Class
