//
//  PrefixViewContoller.swift
//  POE
//
//  Created by Brandon Kueker on 6/23/15.
//  Copyright (c) 2015 Brandon Kueker. All rights reserved.
//

import UIKit

class PrefixViewContoller: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var prefixTypeTable: UITableView!
    var prefixArray : NSArray = []
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefixArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let path = NSBundle.mainBundle().pathForResource("prefix_parse", ofType: "json")
        let data = NSData(contentsOfFile: path!)
        let json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers, error: nil)!
        
        if let dict = json as? NSDictionary {
            prefixArray = (dict["Prefixes"] as? NSArray)!
            
            prefixTypeTable.reloadData()
            //            if let start = dict["Prefixes"] as? NSArray {
            //
            //                //for var i = 0; i < start.count; i++ {
            //                var prefixTypes = start[0] as? NSDictionary
            //
            //                if let prefixType = prefixTypes?.valueForKey("Prefix Type") as? String {
            //                    //println(prefixType)
            //                }
            //
            //                if let prefixes = prefixTypes?.valueForKey("Prefixes") as? NSArray {
            //
            //                    println(prefixes)
            //                }
            //                //}
            //            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
