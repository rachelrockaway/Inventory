//
//  ViewController.swift
//  Inventory
//
//  Created by Rachel Stevenson on 11/16/15.
//  Copyright (c) 2015 rachelrockaway. All rights reserved.
//

import Parse
import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var imageView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func captureImage() {
    
        var imageFromSource = UIImagePickerController()
        imageFromSource.delegate = self
        imageFromSource.allowsEditing = false
 
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
    
            imageFromSource.sourceType = UIImagePickerControllerSourceType.Camera
    
        }
        
        else {
            
            imageFromSource.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        }
        
        self.presentViewController(imageFromSource, animated: true, completion: nil)
        
        
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]){
            var temp : UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            imageView.image = temp
        self.dismissViewControllerAnimated(true, completion: {})
    }

}

