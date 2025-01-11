//
//  PageControlFirstViewController.swift
//  CodeFactory
//
//  Created by Anuj on 10/01/25.
//

import UIKit

class PageControlFirstViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var vwHeader: UIView!
    
    var isComeFrom: Int = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.loadInitialSettings()
    }
    
    //MARK: - loadInitialSettings
    func loadInitialSettings(){
        self.view.backgroundColor = UICOLOR_APP_BACKGROUND_COLOR
        
        self.tableView.tableHeaderView = self.vwHeader
    }
    
    //MARK: - tableReload
    func tableReload(){
        self.tableView.reloadData()
    }
    
}
