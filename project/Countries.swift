//
//  Countries.swift
//  project
//
//  Created by Ankam,Mounika on 3/26/15.
//  Copyright (c) 2015 Mounika. All rights reserved.
//

import UIKit

class Countries: UITableViewController {
    
    
    var countryNames:[NSString] = ["Australia", "Brazil", "Canada", "France", "Germany", "India", "Japan", "Kenya", "Mexico", "New Zealand", "Pakistan", "South Africa", "Sri Lanka", "United States", "Zimbabwe"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
        var image:UIImage = UIImage(named: "bg1.png")!
        
        self.navigationController?.navigationBar.setBackgroundImage(image,forBarMetrics: .Default)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return countryNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("country_cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)

        
        var cimage:UIImageView = cell.viewWithTag(10) as UIImageView
        var namelabel:UILabel = cell.viewWithTag(20) as UILabel
        
        cimage.image = UIImage(named:  countryNames[indexPath.row])
        namelabel.text = countryNames[indexPath.row]
       
        // Configure the cell...

        return cell
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     
        var button:UIButton = sender as UIButton
        
        var countryName = (button.superview!.viewWithTag(20) as UILabel).text
        
        var selectedCountryIndex:Int = (countryNames as NSArray).indexOfObject(countryName!)
        
        if segue.identifier == "nationalAnthem" {
            var nationalAnthem: NationalAnthem = segue.destinationViewController as NationalAnthem
            nationalAnthem.name = countryNames[selectedCountryIndex]
        }
            
        else /* Piano segue */ {
            var piano1: Piano1 = segue.destinationViewController as Piano1
            piano1.name = countryNames[selectedCountryIndex]
        }
        
   }

    

}
