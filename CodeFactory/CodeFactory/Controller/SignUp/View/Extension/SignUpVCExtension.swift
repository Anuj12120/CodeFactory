//
//  SignUpVCExtension.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit


extension SignUpViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    //MARK: - UITableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0){
            var cell: ShowImageCell? = tableView.dequeueReusableCell(withIdentifier: "ShowImageCell") as! ShowImageCell?
            if cell == nil {
                let topLevelObjects: [Any] = Bundle.main.loadNibNamed("ShowImageCell", owner: self, options: nil)!
                cell = (topLevelObjects[0] as? ShowImageCell)
            }
            cell?.configureShowSignUpImage()
            cell?.selectionStyle = .none
            return cell!
        }else if (indexPath.row == 1){
            var cell: LoginDetailCell? = tableView.dequeueReusableCell(withIdentifier: "LoginDetailCell") as! LoginDetailCell?
            if cell == nil {
                let topLevelObjects: [Any] = Bundle.main.loadNibNamed("LoginDetailCell", owner: self, options: nil)!
                cell = (topLevelObjects[0] as? LoginDetailCell)
            }
            cell?.configureSignUpDetailCell()
            cell?.selectionStyle = .none
            return cell!
        }else{
            var cell: TextInputCell? = tableView.dequeueReusableCell(withIdentifier: "TextInputCell") as! TextInputCell?
            if cell == nil {
                let topLevelObjects: [Any] = Bundle.main.loadNibNamed("TextInputCell", owner: self, options: nil)!
                cell = (topLevelObjects[0] as? TextInputCell)
            }
            cell?.configureSignUpDetails(currentIndxPath: indexPath)
            cell?.selectionStyle = .none
            return cell!
        }
    }
    
    
}
