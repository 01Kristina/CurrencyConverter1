//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Kristina Skurdelyte on 08/09/2017.
//  Copyright © 2017 KS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

// MARK: Properties
    
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        conversion()
    }
    
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.00
    
    func conversion(){
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.00
    }

    

    @IBAction func clearButton(_ sender: UIButton) {
        inputTextField.text = " "
        conversion()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    // Handle the text field's user input through delegate callbacks
        inputTextField.delegate = self }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()}
        // Dispose of any resources that can be recreated.
        
        
    //MARK: UITextFieldDelegate
    
        // Called when 'return' key is pressed
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
        // Called when user taps outside the text field
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }


}

