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
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!

    
    //variables
    
    var HomeViewController: UIViewController!
    var TrendingViewController: UIViewController!
    var SearchViewController: UIViewController!
    var AccountViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    

    //viewdidload
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load VCs
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        HomeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        TrendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        SearchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        AccountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        
        viewControllers = [HomeViewController, SearchViewController, AccountViewController, TrendingViewController]
        
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didPressTab(sender: UIButton) {
        
        let previousIndex = selectedIndex
        
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
        
        
    }
    
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func homeButton(sender: AnyObject) {
        
        contentView.addSubview(HomeViewController.view)
        
    }
    
    @IBAction func searchButton(sender: AnyObject) {
        
        contentView.addSubview(SearchViewController.view)
        
    }
    
    @IBAction func accountButton(sender: AnyObject) {
        
        contentView.addSubview(AccountViewController.view)
        
        
        
    }
 
    @IBAction func trendingButton(sender: AnyObject) {
        
        
         contentView.addSubview(TrendingViewController.view)
        
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
