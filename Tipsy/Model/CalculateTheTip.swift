//
//  CalculateTheTip.swift
//  Tipsy
//
//  Created by Mohamed Salah on 12/09/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit
struct CalculateTheTip {
    var tip : Tip?
    mutating func calculateTips(percent:Float,numberOfPeoplef:Int,moneyf:Float){
        let el7sba : Float
        el7sba = ((moneyf * percent) + moneyf)/Float(numberOfPeoplef)
        tip = Tip(moneyEnd:el7sba,tip:percent,numberOfPeople:numberOfPeoplef,moneyStart: moneyf)
        
    }
    func getEl7sba() -> String {
        let moneyEnd2Decimal = String(format: "%.1f", tip?.moneyEnd ?? "0.0")
        return moneyEnd2Decimal
    }
    func getPersent() -> String {
        let persentSada = String (tip?.tip ?? 0.0)
        return persentSada
    }
    func getNumberOfPeople() -> String {
        let number = String(tip?.numberOfPeople ?? 0)
        return number
    }
    
    
   
}
