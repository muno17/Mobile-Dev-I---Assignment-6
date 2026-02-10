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
    
    @IBOutlet weak var ValidInteger: UILabel!
    
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
        // if value is not an integer, no conversion will take place and usd will = 0
        // the amount text field is set up to pull up a number pad so only numbers should be passed
        let input = usdAmount.text ?? ""
        if let amount = Int(input) {
            ValidInteger.isHidden = true;
            
            convertLogic.setUsd(amount)
            convertLogic.calculate()
            
            // only segue if the input is an int
            self.performSegue(withIdentifier: "toConversion", sender: self)
        } else {
            ValidInteger.isHidden = false;
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConversion" {
            let navigation = segue.destination as! ConversionViewController
            // pass calculatedamounts
            navigation.usd = convertLogic.getUsd()
            navigation.peso = convertLogic.getPeso()
            navigation.euro = convertLogic.getEuro()
            navigation.pound = convertLogic.getPound()
            navigation.yen = convertLogic.getYen()
            
            // pass visibility states
            navigation.showPeso = convertLogic.peso
            navigation.showEuro = convertLogic.euro
            navigation.showPound = convertLogic.pound
            navigation.showYen = convertLogic.yen
        }
    }

}

