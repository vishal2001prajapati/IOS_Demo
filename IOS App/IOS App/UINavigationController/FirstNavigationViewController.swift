//
//  FirstNavigationViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 30/03/22.
//

import UIKit

class FirstNavigationViewController: UIViewController {

    //MARK: - OutLets And Variables
    @IBOutlet weak var textTransfer: UITextField!
    var coordinator: FirstVCCoordinator?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondVC(_ sender: UIButton) {
        coordinator?.goToSecondVC()
    }
}
