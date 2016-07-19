//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bonJoviImage: UIImageView!
    
    //my flag prop
    var isBig = false
    
    @IBOutlet weak var expandButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.removeConstraints(self.view.constraints)
        
        bonJoviImage.widthAnchor.constraintEqualToAnchor(view.widthAnchor).active = true
        bonJoviImage.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        expandButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        expandButton.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -10).active = true
        
        
    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        
        let startingHeight = bonJoviImage.heightAnchor
        
        if !isBig {
            
            
            
            UIView.animateKeyframesWithDuration(3.0, delay: 0.0, options: [.CalculationModeCubic], animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.3, animations: {
                    
                    self.bonJoviImage.heightAnchor.constraintEqualToAnchor(startingHeight, multiplier: 0.8).active = true
                    
                    // add what you want to animate
                    self.view.layoutIfNeeded()
                    
                })
                
                UIView.addKeyframeWithRelativeStartTime(0.3, relativeDuration: 0.7, animations: {
                    
                    self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor).active = true
                    
                    // add what you want to animate
                    
                    self.view.layoutIfNeeded()
                })
                
                
                
            }) { (complete) in
                
                
                self.isBig = true
            }
        } else {
            
            
            UIView.animateKeyframesWithDuration(3.0, delay: 0.0, options: [], animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.3, animations: {
                    
                    self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5).active = true
                    
                    // add what you want to animate
                    self.view.layoutIfNeeded()
                    
                })
                
                UIView.addKeyframeWithRelativeStartTime(0.3, relativeDuration: 0.7, animations: {
                    
                    self.bonJoviImage.heightAnchor.constraintEqualToAnchor(startingHeight).active = true
                    
                    // add what you want to animate
                    
                    self.view.layoutIfNeeded()
                })
                
                
                
            }) { (complete) in
                
                
                self.isBig = false
            }
        }
        
        
        
    }
    
}

