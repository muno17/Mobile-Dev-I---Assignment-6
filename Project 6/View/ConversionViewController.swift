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
    
    var usd = 0
    var peso = 0.00
    var euro = 0.00
    var pound = 0.00
    var yen = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "$\(usd)"
        pesoAmount.text = "$\(peso)"
        euroAmount.text = "€\(euro)"
        poundAmount.text = "£\(pound)"
        yenAmount.text = "¥\(yen)"
        
        showCurrencies()
        
        // Do any additional setup after loading the view.
    }
    
    // show/hide currencies if they have been selected
    func showCurrencies() {
        if peso == 0.00 {
            pesoStackView.isHidden = true
        } else {
            pesoStackView.isHidden = false
        }
        
        if euro == 0.00 {
            euroStackView.isHidden = true
        } else {
            euroStackView.isHidden = false
        }
        
        if pound == 0.00 {
            poundStackView.isHidden = true
        } else {
            poundStackView.isHidden = false
        }
        
        if yen == 0.00 {
            yenStackView.isHidden = true
        } else {
            yenStackView.isHidden = false
        }
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
