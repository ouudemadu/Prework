//
//  ViewController.swift
//  Prework
//
//  Created by OJ Udemadu on 12/22/20.
//

import UIKit

class ViewController: UIViewController {

    

    
    
    

    
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var partySizeStepper: UIStepper!
    @IBOutlet weak var tipSegmentedCtrlField: UISegmentedControl!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountField.becomeFirstResponder()
        
    }

    @IBAction func onTap(_ sender: Any) {
        //view.endEditing(true)
    }
    
  
    @IBAction func calculateTip(_ sender: Any) {
        
        
        // Get bill
        let tipPercentages = [0.15,0.18,0.2]
        let bill = Double(billAmountField.text!) ?? 0
        
        // Update party size
        partySizeLabel.text = String(Int(partySizeStepper.value))
        
        // Display tip percentage
        let tipPercentage = tipPercentages[tipSegmentedCtrlField.selectedSegmentIndex] * 100.0
        tipPercentageLabel.text = String(format: "(%.1f%%)", tipPercentage)
        
        // Calculate tip/total
        let partySize = partySizeStepper.value
        let tip = (bill * tipPercentages[tipSegmentedCtrlField.selectedSegmentIndex])/partySize
        let total = (bill/partySize) + tip
        
        // Update tip/total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    /*-----------------------------------------------------*/
    
    @IBAction func tipAdjuster(_ sender: UISlider) {
        // Display tip percentage
        let value = Double(sender.value) * 100

        tipPercentageLabel.text = String(format: "(%.1f%%)", value)
        
        // Calculate and update tip/total labels
        let bill = Double(billAmountField.text!) ?? 0
        let partySize = partySizeStepper.value
        
        let sliderTip = (bill * (value)/100.0)/partySize
        let total = (bill/partySize) + sliderTip
        
        tipLabel.text = String(format: "$%.2f", sliderTip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

