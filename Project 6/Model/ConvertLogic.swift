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
    
    var usd = 0.00;
    var cpeso = 0.00;
    var ceuro = 0.00;
    var cpound = 0.00;
    var cyen = 0.00;
    
    mutating func setUsd(_ val: Double) {
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
    
    
    mutating func calculate() {
        if (peso) {
            cpeso = usd * 3700
        }
        
        if (euro) {
            ceuro = usd * 0.85
        }
        
        if (pound) {
            cpound = usd * 0.73
        }
        
        if (yen) {
            cyen = usd * 157
        }
    }
}
