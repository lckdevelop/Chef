//
//  MainNavigationController.swift
//  Chef
//
//  Created by Chaekyeong Lee on 2022/12/04.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButtonImage = UIImage(named: "chevron.left")
        
        navigationBar.backIndicatorImage = backButtonImage
        navigationBar.backIndicatorTransitionMaskImage = backButtonImage
        navigationBar.tintColor = .white
    }

}
