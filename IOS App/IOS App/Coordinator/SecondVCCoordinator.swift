//
//  SecondVCCoordinator.swift
//  IOS App
//
//  Created by Vishal Prajapati on 31/03/22.
//

import UIKit

class SecondVCCoordinator: Coordinator {
    
    var navController: UINavigationController
    
    init(nav : UINavigationController) {
        self.navController = nav
    }
    
    func start() {
        if  let secondVC = UIStoryboard(name: "UIFirstStoryboard", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController" ) as? SecondViewController {
            navController.pushViewController(secondVC, animated: true)
        }
    }
  
    func stop() {
        
    }
    
    func finishToRoot() {
        
    }
}
