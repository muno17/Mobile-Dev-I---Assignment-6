//
//  ViewController.swift
//  Project 6
//
//  Created by Daniel Muñoz on 2/7/26.
//

import UIKit

class ViewController: UIViewController {
    
    var convertLogic = ConvertLogic()

    @IBOutlet weak var usdAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pesoToggle(_ sender: UISwitch) {
        convertLogic.setPeso(sender.isOn);
    }
    
    
    @IBAction func eurosToggle(_ sender: UISwitch) {
        convertLogic.setEuro(sender.isOn)
    }
    
    
    @IBAction func poundsToggle(_ sender: UISwitch) {
        convertLogic.setPound(sender.isOn)
    }
    
    
    @IBAction func yenToggle(_ sender: UISwitch) {
        convertLogic.setYen(sender.isOn)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        // if the amount being passed exists, try to convert to a double
        var input = usdAmount.text ?? ""
        if var amount = Double(input) {
            convertLogic.setUsd(amount)
        }
    }

}

