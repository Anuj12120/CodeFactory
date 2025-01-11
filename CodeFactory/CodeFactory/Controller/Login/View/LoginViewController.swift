//
//  LoginViewController.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnForgotPassword: UIButton!
    @IBOutlet var vwFooter: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.loadInitialSettings()
    }

    //MARK: - loadInitialSettings
    func loadInitialSettings(){
        self.view.backgroundColor = UICOLOR_APP_BACKGROUND_COLOR
        ///Design Button
        Utility.designAppButton(button: self.btnLogin, title: LOGIN)
        Utility.designAppButton(button: self.btnSignUp, titleClr: UICOLOR_BLACK, backClr: .clear, title: SIGNUP)
        Utility.designAppButton(button: self.btnForgotPassword, titleClr: UICOLOR_BLACK, backClr: .clear, title: FORGOT_PASS)
        //Setup Footer view
        self.tableView.tableFooterView = self.vwFooter
    }

    
    //MARK: - clickForgotPasswordBtn
    @IBAction func clickForgotPasswordBtn(_ sender: Any) {
    }
    
    //MARK: - clickLoginbtn
    @IBAction func clickLoginbtn(_ sender: Any) {
        UIAppDelegate.loadTabbarView()
    }
    
    //MARK: - clickSignUpBtn
    @IBAction func clickSignUpBtn(_ sender: Any) {
        let objController = SignUpViewController.init(nibName: "SignUpViewController", bundle: nil)
        self.navigationController?.pushViewController(objController, animated: true)
    }
    
}
