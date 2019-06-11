//
//  FoodCollectionViewCell.swift
//  TWFood
//
//  Created by Vincent Tsao on 2017/12/17.
//  Copyright © 2017年 VTStudio. All rights reserved.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 6
        containerView.layer.masksToBounds = true
    }
    
    var food: Food? {
        didSet {
            if let food = food {
                imageView.image = food.image
                captionLabel.text = food.caption
                commentLabel.text = food.comment
            }
        }
    }
}
