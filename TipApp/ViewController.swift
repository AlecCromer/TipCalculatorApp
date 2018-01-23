//
//  ViewController.swift
//  TipApp
//
//  Created by Tamirat Abegaz on 1/11/18.
//  Copyright © 2018 UNG CSCI 3660. All rights reserved.
//

//prevent extra decimals
//remove percents add a slider
import UIKit

class ViewController: UIViewController {
    
    private var tipCalculatorModel = TipCalculatorModel()
   
    @IBOutlet weak var displayBill: UILabel!
    
    @IBAction func clear(_ sender: UIButton) {
        displayBill.text = "0"
        tipOutlet.text = "0"
        totalOutlet.text = "0"
    }
    @IBOutlet weak var tipOutlet: UILabel!
    @IBOutlet weak var totalOutlet: UILabel!
    
    @IBAction func TouchTip(_ sender: UIButton) {
        let tipPercentage = Double(sender.currentTitle!.prefix(2))
        let bill = Double(displayBill.text!)!
        let tupleResult = tipCalculatorModel.computeTip(tipPercentage: tipPercentage!, bill: bill)
        tipOutlet.text = String(tupleResult.tip)
        totalOutlet.text = String(tupleResult.finalBill)
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        if displayBill.text == "0"
        {
            displayBill.text = sender.currentTitle!
        }
        else
        {
            displayBill.text = displayBill.text! + sender.currentTitle!
        }
    }
    
    @IBOutlet weak var UISliderOutput: UILabel!
    @IBAction func UISlider(_ sender: UISlider) {
    }
    @IBOutlet weak var UIOutput: UISlider!
}



