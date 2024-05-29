//
//  ViewController5.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class Discount: UIViewController {
    
    @IBOutlet weak var priceAmountOutlet: UITextField!
    @IBOutlet weak var discountOutlet: UITextField!
    @IBOutlet weak var countOutlet: UIButton!
    @IBOutlet weak var priceAfterDiscountOutlet: UILabel!
    @IBOutlet weak var savedAmountOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func countAction(_ sender: UIButton) {
        let amount = Double(priceAmountOutlet.text!) ?? 0
        let discount = Double(discountOutlet.text!) ?? 0
        
        let savedAmount = amount * discount / 100
        let discountPrice = amount - savedAmount
        
        priceAfterDiscountOutlet.text = String (format: "%.2f", discountPrice)
        savedAmountOutlet.text = String (format: "%.2f", savedAmount)
        
        
    }
    
    
    
}
