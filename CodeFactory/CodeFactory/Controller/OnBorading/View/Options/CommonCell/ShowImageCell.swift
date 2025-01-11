//
//  ShowImageCell.swift
//  CodeFactory
//
//  Created by Anuj on 10/01/25.
//

import UIKit

class ShowImageCell: UITableViewCell {

    
    @IBOutlet weak var imgIcon: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - configurePageControlFirstImageCell
    func configurePageControlFirstImageCell(){
        self.imgIcon.image = UIImage(named: "first")
    }
    
    //MARK: - configurePageControlSecondImageCell
    func configurePageControlSecondImageCell(){
        self.imgIcon.image = UIImage(named: "second")
    }
    
    //MARK: - configurePageControlThirdImageCell
    func configurePageControlThirdImageCell(){
        self.imgIcon.image = UIImage(named: "third")
    }
    
    func configureShowLoginImage(){
        self.imgIcon.image = UIImage(named: "ic_login")
    }
    
    func configureShowSignUpImage(){
        self.imgIcon.image = UIImage(named: "ic_signup")
    }
    
}
