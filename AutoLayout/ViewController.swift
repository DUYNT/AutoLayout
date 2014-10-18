//
//  ViewController.swift
//  AutoLayout
//
//  Created by DuyNT on 10/17/14.
//  Copyright (c) 2014 DuyNT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var blue, red, black, yellow: UIView?
    
    var c1, c2, c3, c4, c5, c6, c7, c8, c9: [AnyObject]?
    var co1, co2: NSLayoutConstraint?
    
    var c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8: [AnyObject]?
    var co_1, co_2: NSLayoutConstraint?
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        
        blue = UIView()
        blue!.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blue!)
        blue!.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        red = UIView()
        red!.backgroundColor = UIColor.redColor()
        self.view.addSubview(red!)
        red!.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        black = UIView()
        black!.backgroundColor = UIColor.blackColor()
        self.view.addSubview(black!)
        black!.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        yellow = UIView()
        yellow!.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellow!)
        yellow!.setTranslatesAutoresizingMaskIntoConstraints(false)
        portrainContaint()
        landscapeConstraint()
        toggleConstraint(true)
    }
    
    func portrainContaint(){
        let views = ["views": self.view, "blue": blue!, "red": red!, "black": black!, "yellow": yellow!]
        c1 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-20.0-[blue]-20.0-[red]-20.0-[black]-20.0-[yellow]-20.0-|", options: nil, metrics: nil, views: views)
        
        self.view.addConstraints(c1!)
        c9 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20.0-[blue]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c9!)
        
        c2 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20.0-[red]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c2!)
        c3 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20.0-[black]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c3!)
        c4 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20.0-[yellow]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c4!)
        
        co1 = NSLayoutConstraint(item: blue!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: red!, attribute: NSLayoutAttribute.Height, multiplier: 3, constant: 0)
        self.view.addConstraint(co1!)
        co2 = NSLayoutConstraint(item: blue!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: red!, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        self.view.addConstraint(co2!)
        
        c5 = NSLayoutConstraint.constraintsWithVisualFormat("H:[red(==black)]", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c5!)
        c6 = NSLayoutConstraint.constraintsWithVisualFormat("V:[red(==black)]", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c6!)
        
        c7 = NSLayoutConstraint.constraintsWithVisualFormat("H:[red(==yellow)]", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c7!)
        c8 = NSLayoutConstraint.constraintsWithVisualFormat("V:[red(==yellow)]", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c8!)
        
    }
    
    func landscapeConstraint(){
        let views = ["views": self.view, "blue": blue!, "red": red!, "black": black!, "yellow": yellow!]
        c_1 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-20.0-[blue]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_1!)
        c_2 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-20.0-[red]-20.0-[black]-20.0-[yellow]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_2!)
        c_3 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20.0-[blue]-20.0-[red]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_3!)
        c_4 = NSLayoutConstraint.constraintsWithVisualFormat("H:[blue]-20.0-[black]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_4!)
        c_5 = NSLayoutConstraint.constraintsWithVisualFormat("H:[blue]-20.0-[yellow]-20.0-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_5!)
        
        co_1 = NSLayoutConstraint(item: red!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: blue!, attribute: NSLayoutAttribute.Width, multiplier: 1.5, constant: 0)
        self.view.addConstraint(co_1!)
        co_2 = NSLayoutConstraint(item: red!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: blue!, attribute: NSLayoutAttribute.Height, multiplier: 0.3, constant: 0)
        self.view.addConstraint(co_2!)
        
        c_6 = NSLayoutConstraint.constraintsWithVisualFormat("H:[red(==black)]", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_6!)
        c_7 = NSLayoutConstraint.constraintsWithVisualFormat("H:[red(==yellow)]", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_7!)
        
        c_8 = NSLayoutConstraint.constraintsWithVisualFormat("V:[red(==black)]", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_8!)
    }
    func toggleConstraint(portrait: Bool){
        if portrait{
            NSLayoutConstraint.deactivateConstraints(c_1!)
            NSLayoutConstraint.deactivateConstraints(c_2!)
            NSLayoutConstraint.deactivateConstraints(c_3!)
            NSLayoutConstraint.deactivateConstraints(c_4!)
            NSLayoutConstraint.deactivateConstraints(c_5!)
            NSLayoutConstraint.deactivateConstraints(c_6!)
            NSLayoutConstraint.deactivateConstraints(c_7!)
            NSLayoutConstraint.deactivateConstraints(c_8!)
            co_1!.active = false
            co_2!.active = false
            
            NSLayoutConstraint.activateConstraints(c1!)
            NSLayoutConstraint.activateConstraints(c2!)
            NSLayoutConstraint.activateConstraints(c3!)
            NSLayoutConstraint.activateConstraints(c4!)
            NSLayoutConstraint.activateConstraints(c5!)
            NSLayoutConstraint.activateConstraints(c6!)
            NSLayoutConstraint.activateConstraints(c7!)
            NSLayoutConstraint.activateConstraints(c8!)
            NSLayoutConstraint.activateConstraints(c9!)
            co1!.active = true
            co2!.active = true
            
        }else{
            NSLayoutConstraint.deactivateConstraints(c1!)
            NSLayoutConstraint.deactivateConstraints(c2!)
            NSLayoutConstraint.deactivateConstraints(c3!)
            NSLayoutConstraint.deactivateConstraints(c4!)
            NSLayoutConstraint.deactivateConstraints(c5!)
            NSLayoutConstraint.deactivateConstraints(c6!)
            NSLayoutConstraint.deactivateConstraints(c7!)
            NSLayoutConstraint.deactivateConstraints(c8!)
            NSLayoutConstraint.deactivateConstraints(c9!)
            co1!.active = false
            co2!.active = false
            
            NSLayoutConstraint.activateConstraints(c_1!)
            NSLayoutConstraint.activateConstraints(c_2!)
            NSLayoutConstraint.activateConstraints(c_3!)
            NSLayoutConstraint.activateConstraints(c_4!)
            NSLayoutConstraint.activateConstraints(c_5!)
            NSLayoutConstraint.activateConstraints(c_6!)
            NSLayoutConstraint.activateConstraints(c_7!)
            NSLayoutConstraint.activateConstraints(c_8!)

            co_1!.active = true
            co_2!.active = true
        }
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        let size = self.view.bounds.size
        if size.width < size.height{
            toggleConstraint(true)
        }else{
            toggleConstraint(false)
        }
    }
}

