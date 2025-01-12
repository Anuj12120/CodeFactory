//
//  ProfileCell.swift
//  CodeFactory
//
//  Created by Anuj on 12/01/25.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var vwBack: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.vwBack.backgroundColor = .clear
        self.vwBack.layer.cornerRadius = 10.0
        self.vwBack.layer.borderWidth = 1.0
        self.vwBack.layer.borderColor = UICOLOR_TABAR_COLOR.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - configureProfileCell
    func configureProfileCell(currentIndexPath: IndexPath){
        
        switch currentIndexPath.row {
        case 0:
            self.lblTitle.text = YOUR_COURSES
            break
        case 1:
            self.lblTitle.text = SAVED
            break
        case 2:
            self.lblTitle.text = PAYMENT
            break
        default:
            break
        }
        
    }
    
}
