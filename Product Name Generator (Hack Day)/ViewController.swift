//
//  ViewController.swift
//  Product Name Generator (Hack Day)
//
//  Created by Jacob Harris on 11/10/16.
//  Copyright © 2016 -. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordLength: UITextField!
    @IBOutlet weak var charactersToUse: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    func generatePassword (nums: Array<Character>, length: Int) -> (String){
        var pswd = ""
        for _ in 1...length{
            pswd = pswd + String(arc4random_uniform(UInt32(nums.count)))
        }
        return pswd
    }
    
    @IBAction func generatePassword(_ sender: Any) {
        let pswdLength = Int(passwordLength.text!)
        var digits = String(describing: charactersToUse.text)
        let chars = Array(digits.characters)
        print(chars)
        
        self.passwordLabel.text = String(generatePassword(nums: chars, length: pswdLength!));
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

