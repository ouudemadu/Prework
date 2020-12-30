//
//  ViewController.swift
//  Prework
//
//  Created by OJ Udemadu on 12/22/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipSegmentedCtrlField: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill
        let tipPercentages = [0.15,0.18,0.2]
        let bill = Double(billAmountField.text!) ?? 0
        
        // Calculate tip/total
        let tip = bill * tipPercentages[tipSegmentedCtrlField.selectedSegmentIndex]
        let total = bill + tip
        

        // Update tip/total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

