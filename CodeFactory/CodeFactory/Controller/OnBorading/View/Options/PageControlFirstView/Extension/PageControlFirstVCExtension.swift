//
//  PageControlFirstVCExtension.swift
//  CodeFactory
//
//  Created by Anuj on 10/01/25.
//

import UIKit

extension PageControlFirstViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - UITableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            var cell: ShowImageCell? = tableView.dequeueReusableCell(withIdentifier: "ShowImageCell") as! ShowImageCell?
            if cell == nil {
                let topLevelObjects: [Any] = Bundle.main.loadNibNamed("ShowImageCell", owner: self, options: nil)!
                cell = (topLevelObjects[0] as? ShowImageCell)
            }
            switch isComeFrom {
            case 0:
                cell?.configurePageControlFirstImageCell()
                break
            case 1:
                cell?.configurePageControlSecondImageCell()
                break
            case 2:
                cell?.configurePageControlThirdImageCell()
                break
            default:
                break
            }
            cell?.selectionStyle = .none
            return cell!
        }else {
            var cell: ShowDescriptionCell? = tableView.dequeueReusableCell(withIdentifier: "ShowDescriptionCell") as! ShowDescriptionCell?
            if cell == nil {
                let topLevelObjects: [Any] = Bundle.main.loadNibNamed("ShowDescriptionCell", owner: self, options: nil)!
                cell = (topLevelObjects[0] as? ShowDescriptionCell)
            }
            switch isComeFrom {
            case 0:
                cell?.configurePageControlFirstDescriptionCell()
                break
            case 1:
                cell?.configurePageControlScondDescriptionCell()
                break
            case 2:
                cell?.configurePageControlThirdDescriptionCell()
                break
            default:
                break
            }
            cell?.selectionStyle = .none
            return cell!
        }
    }
    
}
