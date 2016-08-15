//
//  MainTableViewController.swift
//  tableView
//
//  Created by Gustavo Calixto on 10/08/16.
//  Copyright © 2016 Gustavo Calixto. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    @IBOutlet weak var navigationBar: UINavigationItem!
    var imageList = [UIImage]()
    var names = [String]()
    var ages = [Int8]()
    var breeds = [String]()
    var castrated = [String]()
    
    
    var lastSelectIndex = 0
    
    func appendImages(){
        imageList.append(UIImage(named: "pet1.jpg")!)
        imageList.append(UIImage(named: "pet2.jpg")!)
        imageList.append(UIImage(named: "pet3.jpg")!)
    }
    
    func appendNames(){
        names.append("Flufy")
        names.append("Joco")
        names.append("Tatau")
    }
    
    func appendAges(){
        ages.append(7)
        ages.append(5)
        ages.append(3)
    }
    
    func appendBreeds(){
        breeds.append("Vira-lata")
        breeds.append("Vira-lata")
        breeds.append("Vira-lata")
    }
    
    func appendCastred(){
        castrated.append("Sim")
        castrated.append("Não")
        castrated.append("Sim")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appendImages()
        appendNames()
        appendAges()
        appendBreeds()
        appendCastred()
        
        navigationBar.title = "Pets ao seu redor"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
    
        let cell = tableView.dequeueReusableCellWithIdentifier("MainTableViewCell", forIndexPath: indexPath) as! MainTableViewCell
        
        cell.cellLabel.text = names[indexPath.item]
        cell.imageView?.image = imageList[indexPath.item]
        
        return cell

    }
    
    //evento para celulas retornadas
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
            lastSelectIndex = indexPath.item
            self.performSegueWithIdentifier("showDetail", sender: self)
            
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let petDetailsView = segue.destinationViewController as! petDetailsController
        
        
        petDetailsView.name = names[lastSelectIndex]
        petDetailsView.age = ages[lastSelectIndex]
        petDetailsView.breed = breeds[lastSelectIndex]
        petDetailsView.castrated = castrated[lastSelectIndex]
    }

    
}


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
