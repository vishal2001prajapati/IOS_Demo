//
//  FirstVCCoordinator.swift
//  IOS App
//
//  Created by Vishal Prajapati on 31/03/22.
//

import UIKit

class FirstVCCoordinator: Coordinator {
    var navController: UINavigationController
    
     init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if  let firstVC = UIStoryboard(name: "UIFirstStoryboard", bundle: nil).instantiateViewController(withIdentifier: "FirstNavigationViewController" ) as? FirstNavigationViewController {
            firstVC.coordinator = self
            navController.pushViewController(firstVC, animated: true)
        }
    }
    func goToSecondVC() {
        let secondVC = SecondVCCoordinator(nav: navController)
        secondVC.start()
    }
    
    func stop() {
        
    }

    func finishToRoot() {
        
    }
    }
