//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Mohamed Salah on 12/09/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var tipVlalue : String?
    var numberOfPeople : String?
    var percent : String?
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var information: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipAmount.text = tipVlalue
        if tipVlalue != nil{
            information.text = "Split between \(numberOfPeople ?? "0.0")"+"people with \(percent ?? "0.0")"+"% tip."
        }
        else
        {
        information.text = "Split between nothing "+"people with nothing"+"% tip."
        }
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
