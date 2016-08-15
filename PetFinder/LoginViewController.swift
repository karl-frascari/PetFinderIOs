//
//  LoginViewController.swift
//  PetFinder
//
//  Created by Usuário Convidado on 10/08/16.
//  Copyright © 2016 Karl. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var iptUser: UITextField!
    @IBOutlet weak var iptPassword: UITextField!
    
    var user:String = "login"
    var passwd:String = "pass"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
   
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "logged"{
            
            let loginOKVC = segue.destinationViewController as! MainTableViewController
            
            //loginOKVC.user = self.iptUser.text!
        }
        else if segue.identifier == "loginError"{
            let loginNotOk = segue.destinationViewController as! LoginError
        }
        
    }
    
    func showMessage(title: String, message: String){
        let dialog = UIAlertController(title: title,message: message,preferredStyle: UIAlertControllerStyle.Alert)
        
        dialog.addAction(UIAlertAction(title:"Ok", style: .Default, handler: nil))
        
        presentViewController(dialog, animated: true, completion: nil)
    }
    
    @IBAction func osPressLog(sender: AnyObject) {
        
        if !iptUser.hasText() || !iptPassword.hasText() {
            
            showMessage("Tela de Login", message: "Digite o usuario e senha")
            
        }
        else if iptUser.text == user && iptPassword.text == passwd{
            self.performSegueWithIdentifier("logged", sender: self)
            
        }
        else{
            self.performSegueWithIdentifier("loginError", sender: self)
            
        }
    }
    
    
   
  
}
