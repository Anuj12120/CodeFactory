//
//  CoursesVCExtension.swift
//  CodeFactory
//
//  Created by Anuj on 12/01/25.
//

import UIKit

extension CoursesViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - UITableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: CoursesCell? = tableView.dequeueReusableCell(withIdentifier: "CoursesCell") as! CoursesCell?
        if cell == nil {
            let topLevelObjects: [Any] = Bundle.main.loadNibNamed("CoursesCell", owner: self, options: nil)!
            cell = (topLevelObjects[0] as? CoursesCell)
        }
        cell?.configureCoursesCell(currentIndexPath: indexPath)
        cell?.selectionStyle = .none
        return cell!
    }
    
    
}
