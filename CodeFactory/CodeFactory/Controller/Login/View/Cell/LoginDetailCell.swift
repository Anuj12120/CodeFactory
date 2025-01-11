//
//  LoginDetailCell.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

class LoginDetailCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lbldescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        Utility.desigAppLabels(Label: lblTitle, txtColor: UICOLOR_BLACK, font: OpanSansBold_Size32)
        Utility.desigAppLabels(Label: lbldescription, txtColor: UICOLOR_BLACK, font: OpanSansRegular_Size15)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //MARK: - configureLoginDetailCell
    func configureLoginDetailCell(){
        self.lblTitle.text = LOGIN
        self.lbldescription.text = LOGIN_DESCRIPTION
    }
    
}
