//
//  ViewController.swift
//  PetFinder
//
//  Created by Usuário Convidado on 10/08/16.
//  Copyright © 2016 Karl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var user:String?

    @IBOutlet weak var userLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userLabel.text = user ?? "default"

    }
    
    @IBAction func getDetails(sender: AnyObject) {
        self.performSegueWithIdentifier("showDetail", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let petDetatils = segue.destinationViewController as! petDetailsController
        
        
    }
}