//
//  ViewController3.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class MutualFund: UIViewController {

    @IBOutlet weak var monthlyInvestmentOutlet: UITextField!
    @IBOutlet weak var expectedReturnOutlet: UITextField!
    @IBOutlet weak var timeOutlet: UITextField!
    @IBOutlet weak var calculateOutlet: UIButton!
    @IBOutlet weak var investedOutlet: UILabel!
    @IBOutlet weak var estReturnOutlet: UILabel!
    @IBOutlet weak var totalValueOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateOutlet.layer.cornerRadius = 10
    }

    @IBAction func calculateButtonAction(_ sender: UIButton) {
        let mInvestment = Float(monthlyInvestmentOutlet.text!) ?? 0
        let expectReturn = Float(expectedReturnOutlet.text!) ?? 0
        var year = Int(timeOutlet.text!) ?? 0
        
        if year <= 0 {
            return
        }
        
        let invest = mInvestment
        let monthlyinterest = expectReturn / 100.0 / 12.0
        let time = year * 12
        
        let totalValue = invest*(Float((pow((1.0+monthlyinterest),Float((time)))-1)/monthlyinterest)*(1+monthlyinterest))
        
        investedOutlet.text = "\(Int(invest)*time)"
        estReturnOutlet.text = String(format: "%.2f", totalValue-((invest*12.0)*Float(year)))
        totalValueOutlet.text = String(format: "%.2f", totalValue)

    }
    

}
