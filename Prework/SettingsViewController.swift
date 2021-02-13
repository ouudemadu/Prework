//
//  SettingsViewController.swift
//  Prework
//
//  Created by OJ Udemadu on 2/6/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1TextField: UITextField!
    @IBOutlet weak var tip2TextField: UITextField!
    @IBOutlet weak var tip3TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Settings"
        tip1TextField.becomeFirstResponder()
    }
    
    @IBAction func updateDefaultTips(_ sender: Any) {
        
        let tip1 = Double(tip1TextField.text!) ?? 0
        let tip2 = Double(tip2TextField.text!) ?? 0
        let tip3 = Double(tip3TextField.text!) ?? 0
        let newTipPct = [tip1/100.0, tip2/100.0, tip3/100.0]
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
