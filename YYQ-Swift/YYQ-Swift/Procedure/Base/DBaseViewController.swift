//
//  DBaseViewController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/7/27.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class DBaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.background
        UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func configUI() {
        
    }
    
    func configNavigationBar() {
        guard let navi = navigationController else { return }
        if navi.visibleViewController == self {
            navi.barStyle(.theme)
            navi.disablePopGesture = false
            navi.setNavigationBarHidden(false, animated: true)
            if navi.viewControllers.count > 1 {
                navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(named:"nav_back_white"), target: self, action: #selector(pressBack))
            }
        }
    }
    @objc func pressBack() {
        navigationController?.popViewController(animated: true)
    }
}

extension DBaseViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}