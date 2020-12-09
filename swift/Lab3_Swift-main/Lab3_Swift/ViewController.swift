//
//  ViewController.swift
//  Lab3_Swift
//
//  Created by Admin on 06.10.2020.
//
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsTextView : UITextView!
    @IBOutlet var taxBillLabel: UILabel!

    @IBAction func calculateTapped(sender : AnyObject) {
        // 1
        tipCalc.total = Double((totalTextField.text! as
        NSString).doubleValue)
        // 2
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        // 3
        for (tipPct, tipValue) in possibleTips {
        // 4
        results += "\(tipPct)%: \(tipValue)\n"
        }
        // 5
        resultsTextView.text = results
        
    }
    @IBAction func taxPercentageChanged(sender : AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender : AnyObject) {
        totalTextField.resignFirstResponder()
    }
    
    let tipCalc = TipCalculatorModel(total: 12.34, taxPct: 0.1)
    
    func refreshUI() {
    // 1
    totalTextField.text = String(format: "%0.2f", tipCalc.total)
    // 2
    taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
    // 3
    taxPctLabel.text = "People count (\(Int(taxPctSlider.value))%)"
    // 4
    resultsTextView.text = ""
    }

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    



}
