//
//  MediaCollectionViewCell.swift
//  LearningCollectionViews
//
//  Created by Ryan Brear on 2019/10/14.
//  Copyright © 2019 Ryan Brear. All rights reserved.
//

import UIKit

class MediaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    
    var mediaData: MediaItem? {
        didSet {
            guard let data = mediaData else {return}
            title.text = data.title
            image.image = data.image
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.5
    }
}
