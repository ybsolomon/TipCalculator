//
//  ViewController.swift
//  Prework
//
//  Created by Yordanos on 2/2/21.
//  Commit check comment
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var bigTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tip Calculator"
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
//        let tipAmount = Double(tipSlider.value)
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
//        let tip = bill * tipAmount
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        bigTotalLabel.text = String(format: "$%.2f", total)
    }
    

}

