//
//  NavigationViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 30/03/22.
//

import UIKit

class NavigationViewController: UIViewController {

    var coordinator: MainVCCordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func navigationAction(_ sender: UIButton) {
        coordinator?.goToNavigationController()
    }
    
}
