//
//  TaxRateVC.swift
//  mCalc
//
//  Created by Reiss Zurbyk on 2016-01-31.
//  Copyright © 2016 Reiss Zurbyk. All rights reserved.
//

import UIKit

class TaxRateVC: UIViewController {

    @IBOutlet weak var taxRateEntry: UITextField!
    
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func applyTaxRate(_ sender: AnyObject) {
        
        if taxRateEntry.text != nil {
            defaults.set(Double(taxRateEntry.text!)!, forKey: "taxrate")
        } else {
            dismiss(animated: true, completion: nil)
        }
        
    }
    

}
