//
//  SlideCollectionViewCell.swift
//  ProjectMS
//
//  Created by Влада Предыбайло on 27.06.2022.
//

import UIKit

class SlideCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var slideImg: UIImageView!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var regBtn: UIButton!
    @IBOutlet weak var authBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    static let reuceId = "SlideCollectionViewCell"
    var delegate: LoginViewControllerDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func regBtnClick(_ sender: Any) {
        delegate.openRegVC()
    }
    
    @IBAction func authBtnClick(_ sender: Any) {
        delegate.openAuthVC()
    }
    
    func configure(slide: Slides){
        slideImg.image = slide.img
        descriptionText.text = slide.text
        
        if slide.id == 3 {
            regBtn.isHidden = false
            authBtn.isHidden = false
        }
        
    }
}


