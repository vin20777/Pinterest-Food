//
//  Food.swift
//  TWFood
//
//  Created by Vincent Tsao on 2017/12/17.
//  Copyright © 2017年 VTStudio. All rights reserved.
//

import UIKit

struct Food {// 鹽酥雞、臭豆腐、關東煮、小籠包、滷肉飯、牛肉麵、蚵仔煎、珍珠奶茶、割包、鐵蛋、鳳梨酥、丸湯、藥燉排骨、滷味、豬血糕、蔥油餅、大腸包小腸、雞排
    
    var caption: String
    var comment: String
    var image: UIImage
    
    
    init(caption: String, comment: String, image: UIImage) {
        self.caption = caption
        self.comment = comment
        self.image = image
    }
    
    init?(dictionary: [String: String]) {
        guard let caption = dictionary["Caption"], let comment = dictionary["Comment"], let food = dictionary["Food"],
            let image = UIImage(named: food) else {
                return nil
        }
        self.init(caption: caption, comment: comment, image: image)
    }
    
    static func allFoods() -> [Food] {
        var foods = [Food]()
        guard let URL = Bundle.main.url(forResource: "Foods", withExtension: "plist"),
            let foodsFromPlist = NSArray(contentsOf: URL) as? [[String:String]] else {
                return foods
        }
        for dictionary in foodsFromPlist {
            if let food = Food(dictionary: dictionary) {
                foods.append(food)
            }
        }
        return foods
    }
    
}

