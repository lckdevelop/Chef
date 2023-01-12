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
        case is TabHomeViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "정자동",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let searchConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "magnifyingglass"),
                handler: { print("--> search tapped") }
            )
            let searchItem = UIBarButtonItem.generate(with: searchConfig, width: 30)
            
            let feedConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "bell"),
                handler: { print("--> feed tapped") }
            )
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem, searchItem]
            navigationItem.backButtonDisplayMode = .minimal
            
        case is TabChefViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "정자동",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let feedConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "bell"),
                handler: { print("--> feed tapped") }
            )
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem]
            navigationItem.backButtonDisplayMode = .minimal

        case is TabShoopingViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "채팅",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let feedConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "bell"),
                handler: { print("--> feed tapped") }
            )
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem]
            navigationItem.backButtonDisplayMode = .minimal
        case is TabEventViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "나의 당근",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let settingConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "gearshape"),
                handler: { print("--> setting tapped") }
            )
            let settingItem = UIBarButtonItem.generate(with: settingConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [settingItem]
            navigationItem.backButtonDisplayMode = .minimal

        default:
            let titleConfig = CustomBarItemConfiguration(
                title: "정자동",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = []
            navigationItem.backButtonDisplayMode = .minimal
        }
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        updateNavigationItem(vc: viewController)
    }
}
