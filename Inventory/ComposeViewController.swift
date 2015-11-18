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

class ComposeViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var previewImage: UIImageView!

    @IBOutlet weak var captionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func captureImage() {
    
        let imageFromSource = UIImagePickerController()
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
    func imagePickerController(picker:UIImagePickerController!, didFinishPickingMediaWithInfo info: [String : AnyObject]){
            let temp : UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            previewImage.image = temp
        self.dismissViewControllerAnimated(true, completion: {})
    }

}

