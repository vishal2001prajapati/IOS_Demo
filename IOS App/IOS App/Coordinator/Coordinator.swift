//
//  Coordinator.swift
//  IOS App
//
//  Created by Vishal Prajapati on 31/03/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var navController: UINavigationController {get set}
    func start()
    func stop()
    func finishToRoot()
}
