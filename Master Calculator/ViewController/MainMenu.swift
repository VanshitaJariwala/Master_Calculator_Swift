//
//  ViewController2.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class MainMenu: UIViewController
{

    @IBOutlet weak var viewOutlet1: UIView!
    @IBOutlet weak var viewOutlet2: UIView!
    @IBOutlet weak var viewOutlet3: UIView!
    @IBOutlet weak var viewOutlet4: UIView!
    @IBOutlet weak var viewOutlet5: UIView!
    @IBOutlet weak var viewOutlet6: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOutlet1.layer.cornerRadius = 10
        viewOutlet2.layer.cornerRadius = 10
        viewOutlet3.layer.cornerRadius = 10
        viewOutlet4.layer.cornerRadius = 10
        viewOutlet5.layer.cornerRadius = 10
        viewOutlet6.layer.cornerRadius = 10
    }
    
    @IBAction func mutualFundAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! MutualFund
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func interestAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! Interest
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func discountAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! Discount
        navigationController?.pushViewController(a, animated: true)
        
    }
    
    @IBAction func emiAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! EMI
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func schoolResultAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! SchoolResult
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func squareOrCubeAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController8") as! SquareOrCube
        navigationController?.pushViewController(a, animated: true)
    }
    
}
