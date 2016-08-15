//
//  petDetailsController.swift
//  PetFinder
//
//  Created by Usuário Convidado on 10/08/16.
//  Copyright © 2016 Karl. All rights reserved.
//

import UIKit

class petDetailsController: UIViewController {
    
    var name:String?
    var age:Int8?
    var breed:String?
    var castrated:String?

    @IBOutlet weak var txt_breed: UILabel!
    @IBOutlet weak var txt_age: UILabel!
    @IBOutlet weak var txt_castred: UILabel!
    @IBOutlet weak var txt_name: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.txt_breed.text = breed;
        self.txt_age.text = "\(age!)";
        self.txt_castred.text = castrated;
        self.txt_name.text = name;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
