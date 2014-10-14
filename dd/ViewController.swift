//
//  ViewController.swift
//  dd
//
//  Created by Maarten Bressinck on 13/10/14.
//  Copyright (c) 2014 Maarten Bressinck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Clicker(sender: AnyObject) {
        println ("hello")
        
        // voor viewcontroller toe te voegen
        let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("View2") as View2
        //self.presentViewController(secondViewController, animated: true, completion: nil)
        
        // voor navigation controller
        self.navigationController?.pushViewController(secondViewController, animated: true)
    
        // indien je een button wil toevoegen in de header doe het dan op de plaats waar je de view aanmaakt
        
        // button adden in de view
        var rightButton:UIBarButtonItem = UIBarButtonItem(
            title: "Add",
            style: .Plain,
            target: self,
            action: "performAdd:")
        secondViewController.navigationItem.rightBarButtonItem = rightButton
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    

        // een model aanmaken?
        var userModel:UserModel
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

