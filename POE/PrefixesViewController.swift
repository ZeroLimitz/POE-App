//
//  PrefixesViewController.swift
//  POE
//
//  Created by Brandon Kueker on 6/24/15.
//  Copyright (c) 2015 Brandon Kueker. All rights reserved.
//

import UIKit

class PrefixesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var prefixesTableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return prefixArray.count
    }
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        
        return nil
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "singleStat")
        
        let currentRow: AnyObject = (prefixArray[indexPath.row] as? NSDictionary)!
        
        if indexPath.row % 2 == 1 {
            cell.backgroundColor = UIColor(red: valueRGB(25), green: valueRGB(25), blue: valueRGB(25), alpha: 0.5)
        } else {
            cell.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        cell.textLabel?.font = UIFont.systemFontOfSize(14)
        cell.textLabel?.textColor = UIColor(red: valueRGB(163), green: valueRGB(141), blue: valueRGB(109), alpha: 1)
        cell.textLabel?.text = currentRow.valueForKey("name")! as? String
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.prefixesTableView.backgroundColor = UIColor(red: valueRGB(13), green: valueRGB(15), blue: valueRGB(13), alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
