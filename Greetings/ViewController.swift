//
//  ViewController.swift
//  Greetings
//
//  Created by Saravia, Kevin on 6/18/20.
//  Copyright © 2020 Saravia, Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var timeOfDay: UISegmentedControl!
    
    @IBAction func showMessage(_ sender: Any) {
        if sender is UIButton{
            print("The button is doing the work")
        }else if sender is UISegmentedControl{
            print("The Segmented control is doing the work")
        }
        var userName = "Stranger"
        if name.text != "" {
            userName = name.text!
        }
        if timeOfDay.selectedSegmentIndex == 0 {
            message.text = "Good Morning " + userName
        }else if timeOfDay.selectedSegmentIndex == 1{
            message.text = "Good Afternoon " + userName
        }else if timeOfDay.selectedSegmentIndex == 2{
            message.text = "Good Evening " + userName
        }else{
            message.text = "No Greeting " + userName
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.delegate = self
        name.becomeFirstResponder();
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.name {
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        name.resignFirstResponder()
        self.view.endEditing(true)
    }
    
}

