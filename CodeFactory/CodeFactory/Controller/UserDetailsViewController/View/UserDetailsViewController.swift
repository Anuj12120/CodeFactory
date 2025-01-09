//
//  UserDetailsViewController.swift
//  CodeFactory
//
//  Created by Anuj on 09/01/25.
//

import UIKit

class UserDetailsViewController: UIViewController {

    @IBOutlet var vwHeader: UIView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.loadInitialSetting()
    }


    //MARK: - loadInitialSetting
    func loadInitialSetting(){
        self.view.backgroundColor = UICOLOR_WHITE
        
        self.btnNext.setTitle("Next", for: .normal)
        self.btnNext.setTitle("Next", for: .highlighted)
        self.btnNext.setTitleColor(UICOLOR_WHITE, for: .normal)
        self.btnNext.setTitleColor(UICOLOR_WHITE, for: .highlighted)
        self.btnNext.titleLabel?.font = OpanSansBold_Size16
        self.btnNext.layer.cornerRadius = 20.0
        self.btnNext.backgroundColor = UICOLOR_BUTTON_COLOR
        
        self.tableView.tableHeaderView = self.vwHeader
    }
    
    
    //MARK: - clickNextBtn
    @IBAction func clickNextBtn(_ sender: Any) {
    }
    
    
}
