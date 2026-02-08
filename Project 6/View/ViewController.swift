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
    
    var usd = 0
    var peso = 0.00
    var euro = 0.00
    var pound = 0.00
    var yen = 0.00
    
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
        // if the amount being passed exists, try to convert to an int
        let input = usdAmount.text ?? ""
        if let amount = Int(input) {
            convertLogic.setUsd(amount)
            convertLogic.calculate()
            
            usd = convertLogic.getUsd()
            peso = convertLogic.getPeso()
            euro = convertLogic.getEuro()
            pound = convertLogic.getPound()
            yen = convertLogic.getYen()
        }
        
        self.performSegue(withIdentifier: "toConversion", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConversion" {
            let navigation = segue.destination as! ConversionViewController
            navigation.usd = usd
            navigation.peso = peso
            navigation.euro = euro
            navigation.pound = pound
            navigation.yen = yen
        }
    }

}

