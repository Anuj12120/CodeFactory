//
//  TextInputCell.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import UIKit

class TextInputCell: UITableViewCell {
    
    @IBOutlet weak var btnHideShowPass: UIButton!
    @IBOutlet weak var txtEnterDetails: UITextField!
    @IBOutlet weak var vwTextInput: UIView!
    
    var currentIndxPath = IndexPath()
    var isPasswordShow: Bool = true
    let attributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UICOLOR_GRAY_COLOR,
        .font: OpanSansRegular_Size15
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.vwTextInput.backgroundColor = .clear
        self.vwTextInput.layer.cornerRadius = 20.9
        self.vwTextInput.layer.borderWidth = 1.0
        self.vwTextInput.layer.borderColor = UICOLOR_BLACK.cgColor
        
        self.txtEnterDetails.font = OpanSansRegular_Size15
        self.txtEnterDetails.textColor = UICOLOR_BLACK
        self.txtEnterDetails.tintColor =  UICOLOR_BLACK
        
        self.btnHideShowPass.isHidden = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //MARK: - configureSignUpDetails
    func configureSignUpDetails(currentIndxPath: IndexPath){
        self.currentIndxPath = currentIndxPath
        switch currentIndxPath.row {
        case 2:
            self.designSignUpNameCell()
            break
        case 3:
            self.designSignUpEmailCell()
            break
        case 4:
            self.designSignUpPasswordCell()
            break
        default:
            break
        }
    }
    
    //MARK: - designSignUpNameCell
    func designSignUpNameCell(){
        self.txtEnterDetails.keyboardType = .emailAddress
        self.txtEnterDetails.attributedPlaceholder = NSAttributedString(string: NAME, attributes: attributes)
        self.txtEnterDetails.addTarget(self, action: #selector(self.enterSignUpName(_:)),for: .editingChanged)
    }
    
    //MARK: - designSignUpEmailCell
    func designSignUpEmailCell(){
        
        self.txtEnterDetails.keyboardType = .emailAddress
        self.txtEnterDetails.attributedPlaceholder = NSAttributedString(string: EMAIL, attributes: attributes)
        self.txtEnterDetails.addTarget(self, action: #selector(self.enterSignUpEmail(_:)),for: .editingChanged)
    }
    
    //MARK: - designSignUpPasswordCell
    func designSignUpPasswordCell(){
        self.btnHideShowPass.isHidden = false
        self.txtEnterDetails.keyboardType = .emailAddress
        self.txtEnterDetails.attributedPlaceholder = NSAttributedString(string: PASSWORD, attributes: attributes)
        self.txtEnterDetails.addTarget(self, action: #selector(self.enterSignUpPassword(_:)),for: .editingChanged)
    }
    
    //MARK: - enterSignUpName
    @objc func enterSignUpName(_ textField: UITextField){
        guard let text = textField.text else { return }
        print(text)
    }
    
    //MARK: - enterSignUpEmail
    @objc func enterSignUpEmail(_ textField: UITextField){
        guard let text = textField.text else { return }
        print(text)
    }
    
    //MARK: - enterSignUpPassword
    @objc func enterSignUpPassword(_ textField: UITextField){
        guard let text = textField.text else { return }
        print(text)
    }
    
    
    //MARK: - configureEmailPassswordCell
    func configureEmailPassswordCell(currentIndxPath: IndexPath){
        self.currentIndxPath = currentIndxPath
        switch currentIndxPath.row {
        case 2:
            self.designEmailCell()
            break
        case 3:
            self.designPasswordCell()
            break
        default:
            break
        }
    }
    
    //MARK: - designEmailCell
    func designEmailCell(){
        
        self.txtEnterDetails.keyboardType = .emailAddress
        self.txtEnterDetails.attributedPlaceholder = NSAttributedString(string: EMAIL, attributes: attributes)
        self.txtEnterDetails.addTarget(self, action: #selector(self.enterEmailDidChange(_:)),for: .editingChanged)
    }
    
    //MARK: - designPasswordCell
    func designPasswordCell(){
        self.btnHideShowPass.isHidden = false
        self.txtEnterDetails.isSecureTextEntry = isPasswordShow
        self.txtEnterDetails.attributedPlaceholder = NSAttributedString(string: PASSWORD, attributes: attributes)
        self.txtEnterDetails.addTarget(self, action: #selector(self.enterPassowrdDidChange(_:)),for: .editingChanged)
    }
    
    //MARK: - enterEmailDidChange
    @objc func enterEmailDidChange(_ textField: UITextField){
        guard let text = textField.text else { return }
        print(text)
    }
    
    @objc func enterPassowrdDidChange(_ textField: UITextField){
        guard let text = textField.text else { return }
        print(text)
    }
    
    //MARK: - clickHideShowPasswordBtn
    @IBAction func clickHideShowPasswordBtn(_ sender: Any) {
        self.isPasswordShow = !self.isPasswordShow
        if currentIndxPath.row == 3{
            self.btnHideShowPass.isSelected = !self.isPasswordShow
            self.txtEnterDetails.isSecureTextEntry = self.isPasswordShow
        }
    }
}
