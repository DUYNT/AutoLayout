//
//  ViewController.swift
//  AutoLayout
//
//  Created by DuyNT on 10/17/14.
//  Copyright (c) 2014 DuyNT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        
        let rectangle = UIView()
        rectangle.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(rectangle)
        rectangle.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rectangleA = UIView()
        rectangleA.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rectangleA)
        rectangleA.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rectangleB = UIView()
        rectangleA.backgroundColor = UIColor.brownColor()
        self.view.addSubview(rectangleB)
        rectangleB.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rectangleC = UIView()
        rectangleA.backgroundColor = UIColor.redColor()
        self.view.addSubview(rectangleC)
        rectangleC.setTranslatesAutoresizingMaskIntoConstraints(false)

        
        let views = ["views": self.view, "rectangle": rectangle, "rectangleA": rectangleA]
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-20.0-[rectangle(200)]", options: nil, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-20.0-[rectangle]-20.0-|", options: nil, metrics: nil, views: views))
        self.view.addConstraint(NSLayoutConstraint(item: rectangleA, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.Height, multiplier: 0.5, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: rectangleA, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[rectangle]-20.0-[rectangleA]", options: nil, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-20.0-[rectangleA]-20.0-|", options: nil, metrics: nil, views: views))
        
        
        
        let rectangABC = ["rectangleA": rectangleA, "rectangleB": rectangleB, "rectangleC": rectangleC]
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[rectangleB(==rectangleA)]", options: nil, metrics: nil, views: rectangABC))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[rectangleC(==rectangleA)]", options: nil, metrics: nil, views: rectangABC))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[rectangleB(==rectangleA)]", options: nil, metrics: nil, views: rectangABC))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[rectangleC(==rectangleA)]", options: nil, metrics: nil, views: rectangABC))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[rectangleA]-20.0-[rectangleB]", options: nil, metrics: nil, views: rectangABC))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[rectangleB]-20.0-[rectangleC]", options: nil, metrics: nil, views: rectangABC))
        
//        
//        self.view.addConstraint(NSLayoutConstraint(item: rectangleB, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0))
//        
//        self.view.addConstraint(NSLayoutConstraint(item: rectangleB, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0))
//        
//        self.view.addConstraint(NSLayoutConstraint(item: rectangleB, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0))
//        
//        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[rectangleA]-20.0-[rectangleB]", options: nil, metrics: nil, views: views))

        
//        
//        self.view.addConstraint(NSLayoutConstraint(item: rectangleC, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0))
//        
//        self.view.addConstraint(NSLayoutConstraint(item: rectangleC, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0))
//        
//        self.view.addConstraint(NSLayoutConstraint(item: rectangleC, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: rectangle, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0))
//        
//        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[rectangleB]-20.0-[rectangleC]", options: nil, metrics: nil, views: views))

    }
}

