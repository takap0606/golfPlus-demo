//
//  ViewController.swift
//  GolfPlus-Demo
//
//  Created by 上野貴大 on 2017/04/05.
//  Copyright © 2017年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate {

    @IBOutlet weak var testTabBar: UITabBar!
    @IBOutlet weak var golfCourse: UIView!
    @IBOutlet weak var shitadori: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        golfCourse.isHidden = false
        shitadori.isHidden = true
        
        testTabBar.delegate = self
    }

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 1:
            golfCourse.isHidden = false
            shitadori.isHidden = true
        case 2:
            golfCourse.isHidden = true
            shitadori.isHidden = false
        default: return
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func leftSideButtonTapped(_ sender: Any) {
        var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }

    
}

