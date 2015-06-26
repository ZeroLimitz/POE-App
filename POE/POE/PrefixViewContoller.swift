//
//  PrefixViewContoller.swift
//  POE
//
//  Created by Brandon Kueker on 6/23/15.
//  Copyright (c) 2015 Brandon Kueker. All rights reserved.
//

import UIKit

var prefixArray : NSArray = []

class PrefixViewContoller: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var prefixTypeArray : NSArray = []
    
    @IBOutlet weak var prefixTypeTable: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefixTypeArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = prefixTypeTable.dequeueReusableCellWithIdentifier("prefixType", forIndexPath: indexPath) as! UITableViewCell
        
        let row = prefixTypeArray[indexPath.row] as? NSDictionary
        
        if indexPath.row % 2 == 1 {
            cell.backgroundColor = UIColor(red: 25.0/255.0, green: 25.0/255.0, blue: 25.0/255.0, alpha: 0.5)
        } else {
            cell.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        cell.textLabel?.text = row?.valueForKey("Prefix Type") as? String
        cell.textLabel?.font = UIFont.systemFontOfSize(14)
        cell.textLabel?.textColor = UIColor(red: 163.0/255.0, green: 141.0/255.0, blue: 109.0/255.0, alpha: 1)
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let row = prefixTypeArray[indexPath.row] as? NSDictionary
        
        let cell = self.prefixTypeTable.cellForRowAtIndexPath(indexPath)
        
        prefixArray = row?.valueForKey("Prefixes") as! NSArray
        
        //performSegueWithIdentifier("prefixesViewSegue", sender: cell)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("prefix_parse", ofType: "json")
        let data = NSData(contentsOfFile: path!)
        let json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers, error: nil)!
        
        if let dict = json as? NSDictionary {
            prefixTypeArray = (dict["Prefixes"] as? NSArray)!
            
            prefixTypeTable.reloadData()
        }
        
        self.prefixTypeTable.backgroundColor = UIColor(red: 13.0/255.0, green: 15.0/255.0, blue: 13.0/255.0, alpha: 1)
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
