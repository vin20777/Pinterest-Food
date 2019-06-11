//
//  CustomViewController.swift
//  TWFood
//
//  Created by Vincent Tsao on 2017/12/20.
//  Copyright © 2017年 VTStudio. All rights reserved.
//

import UIKit

class CustomViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.isNavigationBarHidden = true
    }
}

class TransitionCoordinator: NSObject, UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
}
