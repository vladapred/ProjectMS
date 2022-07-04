//
//  SliderSlides.swift
//  ProjectMS
//
//  Created by Влада Предыбайло on 30.06.2022.
//

import Foundation
import UIKit

class SliderSlides {
    
    func getSlides() -> [Slides]{
        var slides: [Slides] = []
        let slide1 = Slides(id: 1, text: "Вы сможете найти качественные фотографии", img: UIImage(imageLiteralResourceName: "img1"))
        let slide2 = Slides(id: 2, text: "Сохраните понравившиеся фотографии в альбом", img: UIImage(imageLiteralResourceName: "img2"))
        let slide3 = Slides(id: 3, text: "Перед использованием пройдите простую регистрацию", img: UIImage(imageLiteralResourceName: "img3"))
        
        slides.append(slide1)
        slides.append(slide2)
        slides.append(slide3)
        return slides

    }
}
