//
//  ActivityIndicatorViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 23/03/22.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3){
            self.activityIndicator.stopAnimating()
        }
    }
}

