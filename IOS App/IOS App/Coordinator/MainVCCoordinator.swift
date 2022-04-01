//
//  MainVCCoorinator.swift
//  IOS App
//
//  Created by Vishal Prajapati on 01/04/22.
//
import UIKit

class MainVCCordinator: Coordinator {
    var navController: UINavigationController
    
     init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if  let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NavigationViewController" ) as? NavigationViewController {
            mainVC.coordinator = self
            navController.pushViewController(mainVC, animated: true)
        }
    }
    func goToNavigationController() {
        let firstVC = FirstVCCoordinator(navController)
        firstVC.start()
    }
    
    func stop() {
        
    }

    func finishToRoot() {
        
    }
    }
