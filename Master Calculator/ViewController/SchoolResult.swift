//
//  ViewController7.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class SchoolResult: UIViewController {
    
    @IBOutlet weak var totalMarksOutlet: UITextField!
    @IBOutlet weak var yourMarksOutlet: UITextField!
    
    @IBOutlet weak var calculateOutlet: UIButton!
    
    @IBOutlet weak var percentageOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateOutlet.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func calculateAction(_ sender: UIButton) {
        let totalMarks = Double(totalMarksOutlet.text!) ?? 0
        let yourMarks = Double(yourMarksOutlet.text!) ?? 0
        
        let result = (yourMarks * 100) / totalMarks
        percentageOutlet.text = String(format: "%.2f", result)
    }
    
    
}
