//
//  TipCalculatorModel.swift
//  TipApp
//
//  Created by Alec Cromer on 1/19/18.
//  Copyright © 2018 UNG CSCI 3660. All rights reserved.
//

import Foundation
class TipCalculatorModel
{
    var tip: Double=0.0, finalBill: Double = 0.0, feedBack: String=""
    func computeTip(tipPercentage: Double, bill: Double) -> (tip:Double, finalBill:Double)
    {
        tip = (tipPercentage * bill)/100
        finalBill = tip + bill
        return (tip, finalBill)
    }
    func getFeedBack() -> String{
        feedBack = "Thank you, come back again"
        return feedBack
    }
    

}

