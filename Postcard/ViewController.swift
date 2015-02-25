//
//  ViewController.swift
//  Postcard
//
//  Created by Jonas Baer on 12.02.15.
//  Copyright (c) 2015 Jonas Baer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()

        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()

        mailButton.setTitle("Mail Sent!", forState: UIControlState.Normal)
//      UIControlState.Highlighted / UIControlState.Selected ...

    }
    @IBAction func undoButtonPressed(sender: UIButton) {
        messageLabel.hidden = true

        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
//      enterNameTextField.textColor = UIColor.blueColor()

        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()

        mailButton.setTitle("Send Mail", forState:UIControlState.Normal)

    }

}

