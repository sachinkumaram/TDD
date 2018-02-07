//
//  ViewController.swift
//  TestCase
//
//  Created by Sachin Kumaram on 31/01/18.
//  Copyright © 2018 SK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var txtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func anAction(_sender : AnyObject){
        
        let userInput = self.txtField.text;
        self.resultLbl.text = self.testcase(n: Int(userInput!)!);
        
        
    }
    
    func testcase(n: Int) -> String{
        
        let result = (n%3,n%5)
        
        switch result {
        case(0,0):
            return "FizzBuzz"
        case (0,_):
            return "Fizz"
        case(_,0):
            return "Buzz"
       
        default:
            return "\(n)"
        }
        
    }

}

