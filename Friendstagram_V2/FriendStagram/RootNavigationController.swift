//
//  RootNavigationController.swift
//  FriendStagram
//
//  Created by Brandon Danis on 2017-11-20.
//  Copyright © 2017 Brandon Danis. All rights reserved.
//

import Foundation
import UIKit

class RootNavigationController : UINavigationController {
    
    override func viewDidLoad() {
        self.isNavigationBarHidden = true
        DisplayView()
    }
    
    private func DisplayView() {
//        if NetworkManager.shared.HasValidSession() {
        if true {
            let tabController = UITabBarController()
            
            let feedNavigationController = UINavigationController()
            feedNavigationController.viewControllers = [FeedViewController()]
            
            let profileNavigationController = UINavigationController()
            profileNavigationController.viewControllers = [ProfileViewController(user: TEST_USERS[1]!)]
            
            tabController.viewControllers = [feedNavigationController, profileNavigationController]
            tabController.tabBar.tintColor = UIColor(red:0.20, green:0.60, blue:0.86, alpha:1.00)
            tabController.tabBar.barTintColor = nil
            
            let tabBarItems = tabController.tabBar.items! as [UITabBarItem]
            
            tabBarItems[0].title = nil
            tabBarItems[0].imageInsets = UIEdgeInsetsMake(6,0,-6,0)
            tabBarItems[0].image = UIImage(named: "home")
            
            tabBarItems[1].title = nil
            tabBarItems[1].imageInsets = UIEdgeInsetsMake(6,0,-6,0)
            tabBarItems[1].image = UIImage(named: "user")
            
            self.viewControllers = [tabController]
        } else {
            let loginVC = LoginViewController()
            self.viewControllers = [loginVC]
        }
    }
    
}
