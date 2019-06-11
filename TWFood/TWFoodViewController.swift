//
//  TWFoodViewController.swift
//  TWFood
//
//  Created by Vincent Tsao on 2017/12/18.
//  Copyright © 2017年 VTStudio. All rights reserved.
//

import UIKit

private let reuseIdentifier = "FoodCell"

class TWFoodViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var foods = Food.allFoods()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.clear
        collectionView?.contentInset = UIEdgeInsets(top: 23, left: 10, bottom: 10, right: 10)
        if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
    }
}

extension TWFoodViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        if let annotateCell = cell as? FoodCollectionViewCell {
            annotateCell.food = foods[indexPath.item]
        }
        return cell
    }
}

//MARK: - PINTEREST Layout Delegate
extension TWFoodViewController : PinterestLayoutDelegate {
    
    // 1. Returns the photo height
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
        return foods[indexPath.item].image.size.height
    }
}

