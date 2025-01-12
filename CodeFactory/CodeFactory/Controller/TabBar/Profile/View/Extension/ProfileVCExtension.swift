//
//  ProfileVCExtension.swift
//  CodeFactory
//
//  Created by Anuj on 12/01/25.
//

import UIKit


extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - UITableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: ProfileCell? = tableView.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileCell?
        if cell == nil {
            let topLevelObjects: [Any] = Bundle.main.loadNibNamed("ProfileCell", owner: self, options: nil)!
            cell = (topLevelObjects[0] as? ProfileCell)
        }
        cell?.configureProfileCell(currentIndexPath: indexPath)
        cell?.selectionStyle = .none
        return cell!
    }
    
    
}
