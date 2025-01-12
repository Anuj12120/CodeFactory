//
//  CoursesCell.swift
//  CodeFactory
//
//  Created by Anuj on 12/01/25.
//

import UIKit

class CoursesCell: UITableViewCell {

    @IBOutlet weak var lblCourseDescription: UILabel!
    @IBOutlet weak var lblCourseName: UILabel!
    @IBOutlet weak var lblTimeLef: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var vwBack: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.lblTimeLef.font = OpanSansRegular_Size12
        self.lblTimeLef.textColor = UICOLOR_CYAN_COLOR
        self.lblCourseName.font = OpanSansBold_Size32
        self.lblCourseName.textColor = UICOLOR_BLACK
        self.lblCourseDescription.font = OpanSansRegular_Size15
        self.lblCourseDescription.textColor = UICOLOR_BLACK
        
        self.vwBack.backgroundColor = .clear
        self.vwBack.layer.cornerRadius = 10.0
        self.vwBack.layer.borderWidth = 1.0
        self.vwBack.layer.borderColor = UICOLOR_TABAR_COLOR.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - configureCoursesCell
    func configureCoursesCell(currentIndexPath: IndexPath){
        
        switch currentIndexPath.row {
        case 0:
            imgLogo.image = UIImage(named: "ic_swift_course")
            self.lblTimeLef.text = LEFT_TIME
            self.lblCourseName.text = SWIFT
            self.lblCourseDescription.text = SWIFT_COURSE_TYPE
            break
        case 1:
            imgLogo.image = UIImage(named: "ic_scrum")
            self.lblTimeLef.text = LEFT_TIME
            self.lblCourseName.text = SCRUM
            self.lblCourseDescription.text = SCRUM_DESCRIPTION
            break
        default:
            imgLogo.image = UIImage(named: "placeholder")
            self.lblTimeLef.text = "-"
            self.lblCourseName.text = "-"
            self.lblCourseDescription.text = "-"
            break
        }
        
    }
    
}
