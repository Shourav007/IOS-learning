//
//  ViewController.swift
//  BudgetCalculator
//
//  Created by kuet on 27/11/19.
//  Copyright © 2019 kuet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func action1(_ sender: Any) {
        output.text = input.text
        UserDefaults.standard.set(input.text, forKey: "myBalance")
        input.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "myBalance") as? String
        {
            output.text = x
        }
    }

}

