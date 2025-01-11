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
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //MARK: - configureEmailPassswordCell
    func configureEmailPassswordCell(currentIndxPath: IndexPath){
        self.currentIndxPath = currentIndxPath
        switch currentIndxPath.row {
        case 1:
            self.designEmailCell()
            break
        case 2:
            self.designPasswordCell()
            break
        default:
            break
        }
    }
    
    //MARK: - designEmailCell
    func designEmailCell(){
        self.btnHideShowPass.isHidden = true
        self.txtEnterDetails.keyboardType = .emailAddress
        self.txtEnterDetails.attributedPlaceholder = NSAttributedString(string: EMAIL, attributes: attributes)
        self.txtEnterDetails.addTarget(self, action: #selector(self.enterEmailDidChange(_:)),for: .editingChanged)
    }
    
    //MARK: - designPasswordCell
    func designPasswordCell(){
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
        if currentIndxPath.row == 2{
            self.btnHideShowPass.isSelected = !self.isPasswordShow
            self.txtEnterDetails.isSecureTextEntry = self.isPasswordShow
        }
    }
}
