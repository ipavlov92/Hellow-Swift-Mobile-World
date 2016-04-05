//
//  ViewController.swift
//  Hellow Swift Mobile World
//
//  Created by Victoria Fastovec on 05.04.16.
//  Copyright © 2016 Ilya Pavlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        let userName = inputField.text ?? "Аноним"
        let greeting = userName + ", добро пожаловать в мир разработки мобильных приложений!!!"
        greetingLabel.text = greeting
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        inputField.delegate = self
    }
}

extension ViewController:UITextFieldDelegate {
    //при нажатии воода с устройства, вызывается этот метод
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true

    }
    //замена одних эллементов другими
    func textField(textField: UITextField,shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var applyiedString = (textField.text! as? NSString)?.stringByReplacingCharactersInRange(range, withString: string)
        
        let elementsToConvert = ["1" : "Один ",
                                 "2" : "Два ",
                                 "3" : "Три ",
                                 "4" : "Четыре ",
                                 "5" : "Пять ",
                                 "6" : "Шесть ",
                                 "7" : "Семь ",
                                 "8" : "Восемь ",
                                 "9" : "Девять ",
                                 "0" : "Ноль ",]
        for (digit, letters) in elementsToConvert {
            applyiedString = applyiedString?.stringByReplacingOccurrencesOfString(digit, withString: letters)
        }
                                  
          textField.text = applyiedString
                                 
        return false
    }
    
    
    
}