//
//  AppCoordinator.swift
//  IOS App
//
//  Created by Vishal Prajapati on 31/03/22.
//

import UIKit

class AppCoordinator: Coordinator {
    var navController: UINavigationController
    

    init(_ navigationController: UINavigationController ) {
        navController = navigationController
    }
    
    func start() {
            let mainVCC = MainVCCordinator(navController)
            mainVCC.start()
    }
    
    func stop() {
        
    }
    
    func finishToRoot() {
        
    }
    
}
