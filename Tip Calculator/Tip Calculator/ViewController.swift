//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jack Flannery on 1/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipSliderReadout: UILabel!
    
    @IBOutlet weak var billAmountNameLabel: UILabel!
    
    @IBOutlet weak var enterBillAmount: UITextField!
    
    @IBOutlet weak var totalBillNameLabel: UILabel!
    
    @IBOutlet weak var totalBillAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercentageNameLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func billAmountChanged(_ sender: Any) {
        
        let billNum = Double(enterBillAmount.text!) ?? 0
        
        let tipNum = Double(tipSlider.value) * billNum
        
        let totalBillNum = billNum + tipNum
        
        totalBillAmountLabel.text = String(format: "$ %.2f", totalBillNum)
    }
    
    
    @IBAction func tipSliderAction(_ sender: Any) {
        
        let stringTip = String(format: "%.0f", (tipSlider.value)*100)
        
        tipSliderReadout.text = stringTip + "%"
        
        self.billAmountChanged(0);
        
    }
    
    
}

