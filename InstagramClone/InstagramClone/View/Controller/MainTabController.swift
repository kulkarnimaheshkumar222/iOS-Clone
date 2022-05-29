//
//  MainTabController.swift
//  InstagramClone
//
//  Created by Mahesh Kulkarni on 26/05/22.
//

import UIKit

class MainTabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    // MARK: Helper Methods
        
    func configureViewControllers() {
        view.backgroundColor = .white
        let feed = templateNavigationController(unSelectedImage:UIImage(named: "home_unselected")! , selectedImage: UIImage(named: "home_selected")!, rootViewController: FeedController())
        let search = templateNavigationController(unSelectedImage: UIImage(named: "search_unselected")!, selectedImage: UIImage(named: "search_selected")!, rootViewController: SearchController())
        let imageSelector = templateNavigationController(unSelectedImage: UIImage(named: "plus_unselected")!, selectedImage: UIImage(named: "plus_unselected")!, rootViewController: ImageSelectorController())
        let notifications = templateNavigationController(unSelectedImage: UIImage(named: "like_unselected")!, selectedImage: UIImage(named: "like_selected")!, rootViewController: NotificationController())
        let profile = templateNavigationController(unSelectedImage: UIImage(named: "profile_unselected")!, selectedImage: UIImage(named: "profile_selected")!, rootViewController: ProfileController())
        viewControllers = [feed,search,imageSelector,notifications,profile]
        
    }
    
    func templateNavigationController(unSelectedImage:UIImage, selectedImage: UIImage, rootViewController: UIViewController)->UINavigationController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.image = unSelectedImage
        navController.tabBarItem.selectedImage = selectedImage
        navController.navigationBar.tintColor = .black
        return navController
    }
}
