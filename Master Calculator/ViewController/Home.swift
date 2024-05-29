//
//  ViewController.swift
//  Master Calculator
//
//  Created by IMAC3 on 21/12/23.
//

import UIKit

class Home: UIViewController {

    @IBOutlet weak var view1Outlet: UIView!
    @IBOutlet weak var view2Outlet: UIView!
    @IBOutlet weak var view3Outlet: UIView!
    @IBOutlet weak var view4Outlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1Outlet.layer.borderWidth = 1
        view1Outlet.layer.cornerRadius = 10
        view1Outlet.layer.borderColor = UIColor.white.cgColor
        
        view2Outlet.layer.borderWidth = 1
        view2Outlet.layer.cornerRadius = 10
        view2Outlet.layer.borderColor = UIColor.white.cgColor
        
        view3Outlet.layer.borderWidth = 1
        view3Outlet.layer.cornerRadius = 10
        view3Outlet.layer.borderColor = UIColor.white.cgColor
        
        view4Outlet.layer.borderWidth = 1
        view4Outlet.layer.cornerRadius = 10
        view4Outlet.layer.borderColor = UIColor.white.cgColor
        
        
        
    }

    @IBAction func startAppAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! MainMenu
        navigationController?.pushViewController(a, animated: true)
    }
    
}

