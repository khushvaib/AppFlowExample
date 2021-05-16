//
//  Helper.swift
//  AppFlowExample
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import Foundation
import UIKit

class Helper{
    //MARK:- Create Tabbar
    static func createTabbarviewController() -> UITabBarController{
        
        let homeVC =  HomeViewController(nibName: "HomeViewController", bundle: nil)
        let navHome = UINavigationController(rootViewController: homeVC)
        let item1 = UITabBarItem(title: "Home", image: UIImage(named:"home"), tag: 1)
        item1.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -5.0);
        
        
        //Order
        let order =  ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        let navOrder = UINavigationController(rootViewController: order)
        let item2 = UITabBarItem(title: "Profile", image: UIImage(named:"profile"), tag: 2)
        item2.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -5.0);
        
        
        
        homeVC.tabBarItem   = item1
        order.tabBarItem    = item2
        
        
        let tabBarController = UITabBarController()
        tabBarController.tabBar.barTintColor = UIColor.white
        tabBarController.tabBar.isTranslucent = false;
        let controllers = [navHome, navOrder]
        
        tabBarController.selectedIndex = 0
        tabBarController.viewControllers =  controllers
//        UIApplication.shared.statusBarStyle = .lightContent
        return tabBarController
    }
}

extension UIViewController{
    func setTitle(title value: String){
        self.navigationItem.title = value
    }
}
