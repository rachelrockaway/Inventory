//
//  ViewController.swift
//  Inventory
//
//  Created by Rachel Stevenson on 11/16/15.
//  Copyright (c) 2015 rachelrockaway. All rights reserved.
//

import Parse
import ParseUI
import UIKit
import Bolts

class LoginViewController: UIViewController {
    

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        let username = usernameField.text
        let password = passwordField.text
        
        PFUser.logInWithUsernameInBackground(username!, password: password!) {
            (user: PFUser?, error: NSError?)-> Void in
        
        if (error == nil) {
            // Successfully logged in.
            
            print("Successfully Logged In.", terminator: "")
            
        } else {
            // Error while logging in.
            
            let alertController = UIAlertController(title: "Error", message: "Error, Incorrect Username/Password.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
            
            
            }
        }

    }
}
