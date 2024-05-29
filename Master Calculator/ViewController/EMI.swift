//
//  ViewController6.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class EMI: UIViewController {
    
    @IBOutlet weak var amountOutlet: UITextField!
    @IBOutlet weak var interestOutlet: UITextField!
    @IBOutlet weak var timeOutlet: UITextField!
    @IBOutlet weak var interestAmountOutlet: UILabel!
    @IBOutlet weak var totalInterestOutlet: UILabel!
    @IBOutlet weak var totalPayableAmountOutlet: UILabel!
    @IBOutlet weak var calculateOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func calculateAction(_ sender: UIButton) {
        let amount = Double(amountOutlet.text!) ?? 0
        let interest = Double(interestOutlet.text!) ?? 0
        var year = Double(timeOutlet.text!) ?? 0
        year = year * 12
        
        let monthlyInterestRate = interest / 12 / 100

        let interestAmount = (amount * monthlyInterestRate * pow(1 + monthlyInterestRate, year)) / (pow(1 + monthlyInterestRate, year) - 1)
        let totalInterest = (interestAmount * year) - amount
        let payableAmount = totalInterest + amount
        
        interestAmountOutlet.text = String(format: "%.2f", interestAmount)
        totalInterestOutlet.text = String(format: "%.2f", totalInterest)
        totalPayableAmountOutlet.text = String(format: "%.2f", payableAmount)
    }
    
    

}
