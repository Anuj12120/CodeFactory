//
//  UserDetailsVCExtension.swift
//  CodeFactory
//
//  Created by Anuj on 09/01/25.
//

import UIKit


extension UserDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    //MARK: - UITableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UserDetailsCell? = tableView.dequeueReusableCell(withIdentifier: "UserDetailsCell") as! UserDetailsCell?
        if cell == nil {
            let topLevelObjects: [Any] = Bundle.main.loadNibNamed("UserDetailsCell", owner: self, options: nil)!
            cell = (topLevelObjects[0] as? UserDetailsCell)
        }
        cell?.configureUserDetailsCell(currentIndexPath: indexPath)
        cell?.selectionStyle = .none
        return cell!
    }
    
    
}


