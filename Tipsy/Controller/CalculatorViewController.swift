//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    var TipPercesnt : Float = 0.1
    var upAdown = 2
    var calculatorTips = CalculateTheTip()
    @IBOutlet weak var zeroPcButton: UIButton!
    @IBOutlet weak var tenPcButton: UIButton!
    @IBOutlet weak var twentyPcButton: UIButton!
    @IBOutlet weak var numberOfPeople: UILabel!
    @IBOutlet weak var billEntered: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
 
    @IBAction func tipPressed(_ sender: UIButton) {
        if sender == zeroPcButton {
            sender.isSelected = true
            tenPcButton.isSelected = false
            twentyPcButton.isSelected = false
            TipPercesnt = 0.0
        }
        else if sender == tenPcButton{
            sender.isSelected = true
            zeroPcButton.isSelected = false
            twentyPcButton.isSelected = false
            TipPercesnt = 0.1
        }
        else{
            sender.isSelected = true
            zeroPcButton.isSelected = false
            tenPcButton.isSelected = false
            TipPercesnt = 0.2
        }
    }
    
    @IBAction func plusMinus(_ sender: UIStepper) {
        let people = Int(sender.value)
        numberOfPeople.text = String(people)
        upAdown = people
    }
    @IBAction func calculate(_ sender: UIButton) {
        //let numberPeople = Float(upAdown )
        let moneyMoney = Float(billEntered.text ?? "0.0")
        calculatorTips.calculateTips(percent: TipPercesnt, numberOfPeoplef: upAdown, moneyf: moneyMoney ?? 0.0)
       // print(calculatorTips.getEl7sba())
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.tipVlalue =  calculatorTips.getEl7sba()
            destinationVC.numberOfPeople = calculatorTips.getNumberOfPeople()
            destinationVC.percent = calculatorTips.getPersent()
    }
    
 }
}

