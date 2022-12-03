//
//  MainTabBarController.swift
//  Chef
//
//  Created by Chaekyeong Lee on 2022/12/04.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateNavigationItem(vc: self.selectedViewController!)
    }
    
    private func updateNavigationItem(vc: UIViewController) {
        switch vc {
        case is TabChefViewController:
            let titlebar = UIBarButtonItem(title: "chef", style: .plain, target: nil, action: nil)
            let feedItem = UIBarButtonItem(systemItem: .compose)
            
            navigationItem.leftBarButtonItem = titlebar
            navigationItem.rightBarButtonItem = feedItem
            navigationItem.backButtonDisplayMode = .minimal
        case is TabShoopingViewController:
            let titlebar = UIBarButtonItem(title: "shooping", style: .plain, target: nil, action: nil)
            let feedItem = UIBarButtonItem(systemItem: .compose)
            
            navigationItem.leftBarButtonItem = titlebar
            navigationItem.rightBarButtonItem = feedItem
            navigationItem.backButtonDisplayMode = .minimal
        case is TabEventViewController:
            let titlebar = UIBarButtonItem(title: "event", style: .plain, target: nil, action: nil)
            let feedItem = UIBarButtonItem(systemItem: .compose)
            
            navigationItem.leftBarButtonItem = titlebar
            navigationItem.rightBarButtonItem = feedItem
            navigationItem.backButtonDisplayMode = .minimal
        case is TabMyViewController:
            let titlebar = UIBarButtonItem(title: "my", style: .plain, target: nil, action: nil)
            let feedItem = UIBarButtonItem(systemItem: .compose)
            
            navigationItem.leftBarButtonItem = titlebar
            navigationItem.rightBarButtonItem = feedItem
            navigationItem.backButtonDisplayMode = .minimal
        default :
            let titlebar = UIBarButtonItem(title: "home", style: .plain, target: nil, action: nil)
            let feedItem = UIBarButtonItem(systemItem: .compose)
            
            navigationItem.leftBarButtonItem = titlebar
            navigationItem.rightBarButtonItem = feedItem
            navigationItem.backButtonDisplayMode = .minimal
            
        }
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        updateNavigationItem(vc: viewController)
    }
}
