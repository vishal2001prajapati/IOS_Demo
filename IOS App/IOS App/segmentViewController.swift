//
//  segmentViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 15/03/22.
import UIKit

class segmentViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet var defaultView: UIView!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultView.backgroundColor = .red
    }
}

//MARK: - Outlet Actions
extension segmentViewController {
    @IBAction func scondSegmenControlAction(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == Constant.zero) {
            defaultView.backgroundColor = .brown
        }
        else if (sender.selectedSegmentIndex == Constant.one) {
            defaultView.backgroundColor = .green
        }
        else if (sender.selectedSegmentIndex == Constant.two) {
            defaultView.backgroundColor = .orange
        }
        else if (sender.selectedSegmentIndex == Constant.three) {
            defaultView.backgroundColor = .cyan
        }
    }
}
