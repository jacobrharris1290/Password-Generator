//
//  ViewController.swift
//  Product Name Generator (Hack Day)
//
//  Created by Jacob Harris on 11/10/16.
//  Copyright © 2016 -. All rights reserved.
//

import UIKit

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.index(startIndex, offsetBy: i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = self.index(startIndex, offsetBy: r.lowerBound)
        let end = self.index(startIndex, offsetBy: (r.upperBound-r.lowerBound))
        return self[Range(start ..< end)]
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordLength: UITextField!
    @IBOutlet weak var charactersToUse: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    
    func generatePassword (nums: String, length: Int) -> (String){
        var pswd = ""
        for _ in 1...length{
            var n = Int(arc4random_uniform(UInt32(length)))
            pswd += nums[n]
            //pswd = pswd + String(arc4random_uniform(UInt32(nums.count)))
        }
        return pswd
    }
    
    @IBAction func generatePassword(_ sender: Any) {
        let pswdLength = Int(passwordLength.text!)
        let digits = String(describing: charactersToUse.text!)
        self.passwordLabel.text = String(generatePassword(nums: digits , length: pswdLength!));
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

