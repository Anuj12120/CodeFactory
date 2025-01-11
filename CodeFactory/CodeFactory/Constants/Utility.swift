//
//  Utility.swift
//  CodeFactory
//
//  Created by Anuj on 11/01/25.
//

import Foundation
import UIKit


class Utility: NSObject {
    
    //MARK: - desigAppLabels
    class func desigAppLabels(Label: UILabel, txtColor: UIColor, font: UIFont){
        Label.textColor = txtColor
        Label.font = font
    }
    
    //MARK: - designAppButton
    class func designAppButton(button: UIButton, titleClr: UIColor = UICOLOR_WHITE, font: UIFont = OpanSansBold_Size16, backClr: UIColor = UICOLOR_BUTTON_COLOR , redius: CGFloat = 16.0, title: String){
        button.setTitleColor(titleClr, for: .normal)
        button.setTitleColor(titleClr, for: .highlighted)
        button.setTitle(title, for: .normal)
        button.setTitle(title, for: .highlighted)
        button.titleLabel?.font = font
        button.backgroundColor = backClr
        button.layer.cornerRadius = redius
    }
    
}
