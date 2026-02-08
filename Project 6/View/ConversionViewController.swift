//
//  ConversionAmountView.swift
//  Project 6
//
//  Created by Daniel Muñoz on 2/7/26.
//

import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet weak var pesoStackView: UIStackView!
    @IBOutlet weak var euroStackView: UIStackView!
    @IBOutlet weak var poundStackView: UIStackView!
    @IBOutlet weak var yenStackView: UIStackView!
    
    @IBOutlet weak var pesoAmount: UILabel!
    @IBOutlet weak var euroAmount: UILabel!
    @IBOutlet weak var poundAmount: UILabel!
    @IBOutlet weak var yenAmount: UILabel!
    
    @IBOutlet weak var usdLabel: UILabel!
    
    // variables to receive amounts
    var usd = 0
    var peso = 0.00
    var euro = 0.00
    var pound = 0.00
    var yen = 0.00
    
    // variables to receive states
    var showPeso = false
    var showEuro = false
    var showPound = false
    var showYen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = String("Converting\n$\(usd) USD")
        
        // show two decimal places only
        pesoAmount.text = String(format: "$%.2f", peso)
        euroAmount.text = String(format: "€%.2f", euro)
        poundAmount.text = String(format: "£%.2f", pound)
        yenAmount.text = String(format: "¥%.2f", yen)
        
        showCurrencies()
        
        // Do any additional setup after loading the view.
    }
    
    // show/hide currencies if they have been selected
    func showCurrencies() {
        pesoStackView.isHidden = !showPeso
        euroStackView.isHidden = !showEuro
        poundStackView.isHidden = !showPound
        yenStackView.isHidden = !showYen
    }
    

    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
