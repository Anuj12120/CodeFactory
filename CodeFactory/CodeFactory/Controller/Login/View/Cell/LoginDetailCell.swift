//
//  LoginDetailCell.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

class LoginDetailCell: UITableViewCell {
    
    @IBOutlet weak var imgHeight: NSLayoutConstraint!
    @IBOutlet weak var imgWidth: NSLayoutConstraint!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lbldescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        Utility.desigAppLabels(Label: lblTitle, txtColor: UICOLOR_BLACK, font: OpanSansBold_Size32)
        Utility.desigAppLabels(Label: lbldescription, txtColor: UICOLOR_BLACK, font: OpanSansRegular_Size15)
        self.imgWidth.constant = 40.0
        self.imgHeight.constant = 40.0
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
    
    //MARK: - configureSignUpDetailCell
    func configureSignUpDetailCell(){
        self.imgWidth.constant = 0.0
        self.imgHeight.constant = 0.0
        self.lblTitle.text = SIGNUP
        self.lbldescription.text = SIGNUP_DESCRIPTION
    }
    
}
