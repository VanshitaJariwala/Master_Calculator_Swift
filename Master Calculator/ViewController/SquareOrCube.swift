//
//  ViewController8.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class SquareOrCube: UIViewController {

    @IBOutlet weak var numberOutlet: UITextField!
    @IBOutlet weak var squareOrCubeOutlet: UITextField!
    @IBOutlet weak var calculateOutlet: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateOutlet.layer.cornerRadius = 10
        numberOutlet.layer.cornerRadius = 10
        squareOrCubeOutlet.layer.cornerRadius = 10
            }
    
    
 
    @IBAction func calculateAction(_ sender: UIButton) {
        let inputNumber = Int(numberOutlet.text!) ?? 0
        let number = Int(squareOrCubeOutlet.text!) ?? 0
        
        if number == 2 {
            let result = inputNumber * inputNumber
            resultLabel.text = "\(result)"
        } else if number == 3 {
            let result = inputNumber * inputNumber * inputNumber
            resultLabel.text = "\(result)"
        }
        else {
            print("")
        }
    }
        
    
}
