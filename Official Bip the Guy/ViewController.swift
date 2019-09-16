//
//  ViewController.swift
//  Official Bip the Guy
//
//  Created by Ellana Lawrence on 9/16/19.
//  Copyright © 2019 Ellana Lawrence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Mark: Functions
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        //shrink our imageToPunch by 60 pixels
        
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y - shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds} , completion: nil)
    }
    
    
    
    
    //Mark: Actions
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
        print("Hey!")
    }
    
}

