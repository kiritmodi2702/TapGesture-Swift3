//
//  ViewController.swift
//  GestureDemo-Swift3
//  Copyright © 2017 iOSDevCenters. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIGestureRecognizerDelegate , UITextFieldDelegate{
    
    @IBOutlet var viewTap: UIView!
    
    var tapGesture = UITapGestureRecognizer()


    override func viewDidLoad() {
        super.viewDidLoad()
        // TAP Gesture
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.myviewTapped(_:)))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        viewTap.addGestureRecognizer(tapGesture)
        viewTap.isUserInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func myviewTapped(_ sender: UITapGestureRecognizer) {
        
        if self.viewTap.backgroundColor == UIColor.yellow {
            self.viewTap.backgroundColor = UIColor.green
        }else{
            self.viewTap.backgroundColor = UIColor.yellow
        }
    }

}

