//
//  ProfileViewController.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var btnLogout: UIButton!
    @IBOutlet var vwFooter: UIView!
    @IBOutlet var vwHeader: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let tableViewHeight = self.tableView.frame.height
        let contentHeight = self.tableView.contentSize.height
        
        let centeringInset = (tableViewHeight - contentHeight) / 2.0
        let topInset = max(centeringInset, 0.0)
        
        self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.barTintColor = UICOLOR_APP_BACKGROUND_COLOR
        //self.setupCustomBackButtonAppearance()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.loadInitialSettings()
    }

    //MARK: - loadInitialSettings
    func loadInitialSettings(){
        self.view.backgroundColor = UICOLOR_APP_BACKGROUND_COLOR
        self.title = PROFILE
        
        Utility.designAppButton(button: self.btnLogout, titleClr: UICOLOR_BLACK, font: OpanSansRegular_Size12, backClr: .clear, title: LOGOUT)
        
        self.tableView.tableHeaderView = self.vwHeader
        self.tableView.tableFooterView = self.vwFooter
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

    //MARK: - clickLogoutbtns
    @IBAction func clickLogoutbtn(_ sender: Any) {
        UIAppDelegate.loadLoginView()
    }
    
    
}
