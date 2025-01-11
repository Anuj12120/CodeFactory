//
//  LoginVCExtension.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

extension LoginViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - UITableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0){
            var cell: ShowImageCell? = tableView.dequeueReusableCell(withIdentifier: "ShowImageCell") as! ShowImageCell?
            if cell == nil {
                let topLevelObjects: [Any] = Bundle.main.loadNibNamed("ShowImageCell", owner: self, options: nil)!
                cell = (topLevelObjects[0] as? ShowImageCell)
            }
            cell?.configureShowLoginImage()
            cell?.selectionStyle = .none
            return cell!
        }else{
            var cell: LoginDetailCell? = tableView.dequeueReusableCell(withIdentifier: "LoginDetailCell") as! LoginDetailCell?
            if cell == nil {
                let topLevelObjects: [Any] = Bundle.main.loadNibNamed("LoginDetailCell", owner: self, options: nil)!
                cell = (topLevelObjects[0] as? LoginDetailCell)
            }
            cell?.configureLoginDetailCell()
            cell?.selectionStyle = .none
            return cell!
        }
    }
    
    
}
