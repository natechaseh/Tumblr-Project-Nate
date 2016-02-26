//
//  TabBarViewController.swift
//  Tumblr Project Nate
//
//  Created by Nathaniel Hajian on 2/23/16.
//  Copyright © 2016 Nathaniel Hajian. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    //outlets
    
    @IBOutlet weak var contentView: UIView!
    
    //variables
    
    var homeViewController: UIViewController!
    var trendingViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!

    //viewdidload
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load VCs
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func homeButton(sender: AnyObject) {
        
        contentView.addSubview(homeViewController.view)
        
    }
    
    @IBAction func searchButton(sender: AnyObject) {
        
        contentView.addSubview(searchViewController.view)
        
    }
    
    @IBAction func accountButton(sender: AnyObject) {
        
        contentView.addSubview(accountViewController.view)
        
        
        
    }
 
    @IBAction func trendingButton(sender: AnyObject) {
        
        
         contentView.addSubview(trendingViewController.view)
        
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
