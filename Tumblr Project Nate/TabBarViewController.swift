//
//  TabBarViewController.swift
//  Tumblr Project Nate
//
//  Created by Nathaniel Hajian on 2/23/16.
//  Copyright © 2016 Nathaniel Hajian. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    var homeViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
            homeViewController =
                storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as!
                UIViewController
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func homeButton(sender: AnyObject) {
    }
    
    @IBAction func searchButton(sender: AnyObject) {
    }
    
    @IBAction func accountButton(sender: AnyObject) {
    }
 
    @IBAction func trendingButton(sender: AnyObject) {
    }
    
    @IBAction func composeButton(sender: AnyObject) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
