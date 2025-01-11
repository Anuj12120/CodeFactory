//
//  PageControlFirstViewController.swift
//  CodeFactory
//
//  Created by Anuj on 10/01/25.
//

import UIKit

class PageControlFirstViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var isComeFrom: Int = 0
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let tableViewHeight = self.tableView.frame.height
        let contentHeight = self.tableView.contentSize.height
        
        let centeringInset = (tableViewHeight - contentHeight) / 2.0
        let topInset = max(centeringInset, 0.0)
        
        self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.loadInitialSettings()
    }
    
    //MARK: - loadInitialSettings
    func loadInitialSettings(){
        self.view.backgroundColor = UICOLOR_APP_BACKGROUND_COLOR
        
    }
    
    //MARK: - tableReload
    func tableReload(){
        self.tableView.reloadData()
    }
    
}
