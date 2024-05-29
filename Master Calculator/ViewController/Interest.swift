//
//  ViewController4.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class Interest: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    @IBOutlet weak var interestOutlet: UITextField!
    @IBOutlet weak var timeOutlet: UITextField!
    @IBOutlet weak var calculateOutlet: UIButton!
    @IBOutlet weak var interestAmountOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func calculateAction(_ sender: UIButton) {
        let amount = Float(amountOutlet.text!) ?? 0
        let interest = Float(interestOutlet.text!) ?? 0
        let year = Int(timeOutlet.text!) ?? 0
        
        let interestAmount = Int(amount * interest) * year / 100
        
        interestAmountOutlet.text = "\(interestAmount)"
    }
    
}
