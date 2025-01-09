//
//  AppDelegate.swift
//  CodeFactory
//
//  Created by Anuj on 08/01/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
        
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.loadUserDetailsView()
        return true
    }
    
    //MARK: - loadUserDetailsView
    func loadUserDetailsView(){
        let objController = UserDetailsViewController.init(nibName: "UserDetailsViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: objController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
}

