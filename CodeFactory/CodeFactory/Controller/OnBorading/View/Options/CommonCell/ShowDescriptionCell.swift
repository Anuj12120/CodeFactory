//
//  ShowDescriptionCell.swift
//  CodeFactory
//
//  Created by Anuj on 10/01/25.
//

import UIKit

class ShowDescriptionCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.lblDescription.font = OpanSansRegular_Size15
        self.lblDescription.textColor = UICOLOR_BLACK
        
        self.lblTitle.font = OpanSansBold_Size40
        self.lblTitle.textColor = UICOLOR_BLACK
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - configurePageControlFirstDescriptionCell
    func configurePageControlFirstDescriptionCell(){
        self.lblTitle.text = PAGE_CONTROL_FIRST_TITLE
        self.lblDescription.text = PAGE_CONTROL_FIRST_DESC
    }
    
    //MARK: - configurePageControlScondDescriptionCell
    func configurePageControlScondDescriptionCell(){
        self.lblTitle.text = PAGE_CONTROL_SECOND_TITLE
        self.lblDescription.text = PAGE_CONTROL_SECOND_DESC
    }
    
    //MARK: - configurePageControlThirdDescriptionCell
    func configurePageControlThirdDescriptionCell(){
        self.lblTitle.text = PAGE_CONTROL_THIRD_TITLE
        self.lblDescription.text = PAGE_CONTROL_THIRD_DESC
    }
}
