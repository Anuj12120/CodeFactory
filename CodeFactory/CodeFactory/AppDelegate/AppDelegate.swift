//
//  AppDelegate.swift
//  CodeFactory
//
//  Created by Anuj on 08/01/25.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UITabBarControllerDelegate {
    
    var tabBarC: SPXTabbarViewController?
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        IQKeyboardManager.shared.isEnabled = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        self.showAppropriateView()
        return true
    }
    
    //MARK: - showAppropriateView
    func showAppropriateView(){
        let value = VVBaseUserDefaults.getStringForKey(KEY_ONBORADING)
        
        if(!value.isEmpty){
            self.loadLoginView()
        }else{
            self.loadOnBoradingView()
        }
    }
    
    //MARK: - loadOnBoradingView
    func loadOnBoradingView(){
        let objController = OnBoradingViewController.init(nibName: "OnBoradingViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: objController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    //MARK: - loadLoginView
    func loadLoginView(){
        let objController = LoginViewController.init(nibName: "LoginViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: objController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    
    // MARK : - loadTabbarView
    func loadTabbarView(){
        
        var vc1 = UIViewController()
        vc1 = CoursesViewController(nibName: "CoursesViewController", bundle: nil)
        vc1.tabBarItem.title = COURSES
        vc1.tabBarItem.image = UIImage(named: "ic_courses")?.withRenderingMode(.alwaysOriginal)
        vc1.tabBarItem.selectedImage = UIImage(named: "ic_select_courses")?.withRenderingMode(.alwaysOriginal)
        
        let vc2 = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        vc2.tabBarItem.title = PROFILE
        vc2.tabBarItem.image = UIImage(named: "ic_profile")?.withRenderingMode(.alwaysOriginal)
        vc2.tabBarItem.selectedImage = UIImage(named: "ic_select_profile")?.withRenderingMode(.alwaysOriginal)
        
        var vc3 = UIViewController()
        vc3 = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        vc3.tabBarItem.title = SETTINS
        vc3.tabBarItem.image = UIImage(named: "ic_settings")?.withRenderingMode(.alwaysOriginal)
        vc3.tabBarItem.selectedImage = UIImage(named: "ic_select_settings")?.withRenderingMode(.alwaysOriginal)
        
        let navC1 = UINavigationController(rootViewController: vc1)
        let navC2 = UINavigationController(rootViewController: vc2)
        let navC3 = UINavigationController(rootViewController: vc3)
        
        tabBarC = SPXTabbarViewController()
        tabBarC?.tabBar.barTintColor = UICOLOR_BLACK
        UITabBar.appearance().barTintColor = UICOLOR_WHITE
        UITabBar.appearance().tintColor = UICOLOR_WHITE
        UITabBar.appearance().isTranslucent = true
        //        tabBarC?.tabBar.barTintColor = UICOLOR_BLUE_LABEL_COLOR
        tabBarC?.viewControllers = [navC1, navC2, navC3]
        tabBarC?.delegate = self
        tabBarC?.tabBar.backgroundColor = UICOLOR_WHITE
        tabBarC?.tabBar.layer.cornerRadius = 8.0
        tabBarC?.tabBar.layer.borderColor = UICOLOR_TABAR_COLOR.cgColor
        tabBarC?.tabBar.layer.borderWidth = 1.0
        tabBarC?.tabBar.clipsToBounds = true
        tabBarC?.tabBar.clipsToBounds = true
        
        tabBarC?.onTopIndicator = true
        //tabBarC?.indicatorColor = UICOLOR_ORANGE_COLOR
        
        // Selected state title color
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UICOLOR_ORANGE_COLOR
        ]
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: .selected)
        
        self.window?.rootViewController = tabBarC
        self.window?.makeKeyAndVisible()
    }
    
}

