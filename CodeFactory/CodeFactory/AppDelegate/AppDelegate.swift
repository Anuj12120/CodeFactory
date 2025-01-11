//
//  AppDelegate.swift
//  CodeFactory
//
//  Created by Anuj on 08/01/25.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
        
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        IQKeyboardManager.shared.isEnabled = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        self.loadOnBoradingView()
        return true
    }
    
    //MARK: - loadOnBoradingView
    func loadOnBoradingView(){
        let objController = OnBoradingViewController.init(nibName: "OnBoradingViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: objController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
}

