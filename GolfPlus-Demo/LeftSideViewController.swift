//
//  LeftSideViewController.swift
//  GolfPlus-Demo
//
//  Created by 上野貴大 on 2017/04/05.
//  Copyright © 2017年 mycompany. All rights reserved.
//

import UIKit

class LeftSideViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var menuItems:[String] = ["ホーム", "購入した商品", "出品した商品", "設定", "ガイド", "お問い合わせ", "招待してポイントGET", "下取り君を開く"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return menuItems.count;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!
        CustomTableViewCell
        
        cell.menuItemLabel.text = menuItems[indexPath.row]
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row) {
        case 0:
            var centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
            var centerNavController = UINavigationController(rootViewController: centerViewController!)
            
            var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.centerContainer!.centerViewController = centerNavController
            
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            
            break
            
        default:
            
            print("\(menuItems[indexPath.row]) is selected")
            
            
        }
    }
    
    
    
}
