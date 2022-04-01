//
//  SecondViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 31/03/22.
//

import UIKit

class SecondViewController: UIViewController {
    //MARK: - OutLets and Variables
    @IBOutlet weak var lblText: UILabel!
    var coordinator: SecondVCCoordinator?
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if text != nil {
            lblText.text = text
        }
    }
}
