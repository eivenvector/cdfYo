//
//  ViewController.swift
//  cdfYo
//
//  Created by Ivan Aguilar on 7/3/15.
//  Copyright (c) 2015 Ivan Aguilar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var inputString: UITextField!
    
    @IBOutlet weak var outputString: UILabel!
    
    var inputS: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.inputString.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        inputS = inputString.text
        var inputNSS = NSString(string: inputS)
        var inputD = inputNSS.doubleValue
        var outputD = CDF(inputD)
        outputString.text = "\(outputD)"
        return true
    }



}

