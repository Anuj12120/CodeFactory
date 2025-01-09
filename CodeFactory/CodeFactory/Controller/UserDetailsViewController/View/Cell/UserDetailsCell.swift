//
//  UserDetailsCell.swift
//  CodeFactory
//
//  Created by Anuj on 09/01/25.
//

import UIKit

class UserDetailsCell: UITableViewCell {
    
    @IBOutlet weak var txtEnter: UITextField!
    @IBOutlet weak var vwBack: UIView!
    
    let attributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.gray,
        .font: OpanSansRegular_Size15!
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.vwBack.backgroundColor = .clear
        self.vwBack.layer.cornerRadius = 10.0
        self.vwBack.layer.borderWidth = 1.0
        self.vwBack.layer.borderColor =  UICOLOR_BLACK.cgColor
        
        self.txtEnter.font = OpanSansRegular_Size15
        self.txtEnter.textColor = UICOLOR_BLACK
        self.txtEnter.tintColor = UICOLOR_BLACK
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //MARK: - configureUserDetailsCell
    func configureUserDetailsCell(currentIndexPath: IndexPath){
        
        switch currentIndexPath.row {
        case 0:
            self.setUpEnterFirstNameCell()
            break
        case 1:
            self.setUpEnterLastNameCell()
        break
        case 2:
            break
        default:
            break
        }
        
    }
    
    //MARK: - setUpEnterFirstNameCell
    func setUpEnterFirstNameCell(){
        self.txtEnter.attributedPlaceholder = NSAttributedString(string: "First name", attributes: attributes)
        self.txtEnter.addTarget(self, action: #selector(self.enterYourFirstName(_:)),for: .editingChanged)
    }
    
    //MARK: - setUpEnterLastNameCell
    func setUpEnterLastNameCell(){
        self.txtEnter.attributedPlaceholder = NSAttributedString(string: "Last name", attributes: attributes)
        self.txtEnter.addTarget(self, action: #selector(self.enterYourLastName(_:)),for: .editingChanged)
    }
    
    //MARK: - enterYourLastName
    @objc func enterYourLastName(_ textField: UITextField){
        guard let text = textField.text else { return }
        print(text)
    }
    
    //MARK: - enterYourFirstName
    @objc func enterYourFirstName(_ textField: UITextField){
        guard let text = textField.text else { return }
        print(text)
    }
    
}
