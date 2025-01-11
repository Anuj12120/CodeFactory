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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.loadInitialSettings()
    }


    //MARK: - loadInitialSettings
    func loadInitialSettings(){
        self.view.backgroundColor = UICOLOR_APP_BACKGROUND_COLOR
        
        self.tableView.tableFooterView = self.vwFooter
    }

    
    //MARK: - clickForgotPasswordBtn
    @IBAction func clickForgotPasswordBtn(_ sender: Any) {
    }
    
    //MARK: - clickLoginbtn
    @IBAction func clickLoginbtn(_ sender: Any) {
    }
    
    //MARK: - clickSignUpBtn
    @IBAction func clickSignUpBtn(_ sender: Any) {
    }
    
}
