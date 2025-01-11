//
//  SignUpViewController.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var btnSingUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
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
        
        Utility.designAppButton(button: self.btnSingUp, title: SIGNUP)
        Utility.designAppButton(button: self.btnLogin, titleClr: UICOLOR_BLACK, backClr: .clear, title: LOGIN)
        
        self.tableView.tableFooterView = self.vwFooter
    }
    
    //MARK: - clickBackBtn
    @IBAction func clickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK: - clickLoginBtn
    @IBAction func clickLoginBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: - clickSignUpBtn
    @IBAction func clickSignUpBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
