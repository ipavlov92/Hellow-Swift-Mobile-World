//
//  ConverterViewController.swift
//  Hellow Swift Mobile World
//
//  Created by Victoria Fastovec on 07.04.16.
//  Copyright © 2016 Ilya Pavlov. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    let rubToUsdMultiplier = 1 / 67.67
    let usdToRubMultiplier = 63.0
    
    @IBOutlet weak var rubInput: UITextField!
    @IBOutlet weak var usdInput: UITextField!
    
    @IBAction func rubToUsdPressed(sender: AnyObject) {
        convertToUsd()
        
    }
    
    @IBAction func usdToRubPressed(sender: AnyObject) {
        convertUsdToRub()
        
    }
    
    func convertToUsd(){
        guard let rubs = Double(rubInput.text!)else {
            return
        }
        let result = String(rubs * rubToUsdMultiplier)
        usdInput.text = result
    }
    func convertUsdToRub(){
        guard let usd = Double(usdInput.text!) else {
            return
        }
        let result = String(usd * usdToRubMultiplier)
        rubInput.text = result
    
    }

  
}
