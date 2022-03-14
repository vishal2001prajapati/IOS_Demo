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
        if (sender.selectedSegmentIndex == 0) {
            defaultView.backgroundColor = .brown
        }
        else if (sender.selectedSegmentIndex == 1) {
            defaultView.backgroundColor = .green
        }
        else if (sender.selectedSegmentIndex == 2) {
            defaultView.backgroundColor = .orange
        }
        else if (sender.selectedSegmentIndex == 3) {
            defaultView.backgroundColor = .cyan
        }
    }
}
