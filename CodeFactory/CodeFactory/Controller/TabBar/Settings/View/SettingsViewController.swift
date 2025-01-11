//
//  SettingsViewController.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

class SettingsViewController: UIViewController {

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.loadInitialSettings()
    }

    //MARK: - loadInitialSettings
    func loadInitialSettings(){
        self.view.backgroundColor = UICOLOR_APP_BACKGROUND_COLOR
        self.title = SETTINS
        
    }
    
    //MARK: - setupCustomBackButtonAppearance
    func setupCustomBackButtonAppearance() {
        let backImage = UIImage(named: "icon_back")?.withRenderingMode(.alwaysOriginal) // Ensure the image name is correct
        let backButton = UIButton(type: .custom)
        backButton.setImage(backImage, for: .normal) // Use the same image variable
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        backButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        let barButton = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = barButton
    }
    
    @objc func backButtonTapped() {
        UIAppDelegate.loadTabbarView()
    }
}
