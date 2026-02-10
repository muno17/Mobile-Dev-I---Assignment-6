//
//  ConvertLogic.swift
//  Project 6
//
//  Created by Daniel Muñoz on 2/7/26.
//

import Foundation

struct ConvertLogic {
    var peso = false;
    var euro = false;
    var pound = false;
    var yen = false;
    
    var usd = 0;
    var cpeso = 0.00;
    var ceuro = 0.00;
    var cpound = 0.00;
    var cyen = 0.00;
    
    mutating func setUsd(_ val: Int) {
        usd = val
    }
    
    mutating func setPeso(_ val: Bool) {
        peso = val
    }
    
    mutating func setEuro(_ val: Bool) {
        euro = val
    }
    
    mutating func setPound(_ val: Bool) {
        pound = val
    }
    
    mutating func setYen(_ val: Bool) {
        yen = val
    }
    
   func getUsd() -> Int {
        return usd
    }
    
    func getPeso() -> Double {
        return cpeso
    }
    
    func getEuro() -> Double {
        return ceuro
    }
    
    func getPound() -> Double {
        return cpound
    }
    
    func getYen() -> Double {
        return cyen
    }
    
    // conversion amounts for 1 usd as of 2/8/26
    mutating func calculate() {
        if peso {
            cpeso = Double(usd) * 3700
        } else {
            cpeso = 0.00
        }
        
        if euro {
            ceuro = Double(usd) * 0.85
        } else {
            ceuro = 0.00
        }
        
        if pound {
            cpound = Double(usd) * 0.73
        } else {
            cpound = 0.00
        }
        
        if yen {
            cyen = Double(usd) * 157
        } else {
            cyen = 0.00
        }
    }
    
    
}
