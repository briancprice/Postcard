//
//  ViewController.swift
//  Postcard
//
//  Created by Brian Price on 10/6/14.
//  Copyright (c) 2014 Wittysoft, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Label for recipient's name...
    @IBOutlet weak var nameLabel: UILabel!;
    
    // Label for message being sent.
    @IBOutlet weak var messageLabel: UILabel!;
    
    // Recipient's name text field...
    @IBOutlet weak var enterNameTextField: UITextField!;

    // Message text field
    @IBOutlet weak var enterMessageTextField: UITextField!;
    
    // Mail Button field
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }

    // When pressed, shows the messageLabel and updates the text
    // to that of the enterNameTextField
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Configure the message label
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        
        // Clear the input labels
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();

      
        // Configure the name label
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        
        
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        
    }

}

