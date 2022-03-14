//  SliderViewController.swift
//  IOS App
//  Created by Vishal Prajapati on 15/03/22.
import UIKit

class SliderViewController: UIViewController {
    //MARK: - Variables
    var timer = Timer()
    var currentPage = 0
    //MARK: - Outlets
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var simpleSwitch: UISwitch!
    @IBOutlet weak var lblSwitch: UILabel!
    @IBOutlet weak var pageControler: UIPageControl!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var lblValue: UILabel!
    //MARK: - View LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.stepValue = 1.0
        progressView.progress = 0.0
        updatePageControl()
    }
}
//MARK: - ActionButton
extension SliderViewController {
    @IBAction func stateChange(_ sender: UISwitch) {
        if simpleSwitch.isOn {
            lblSwitch.text = "Switch is ON"
        }
        else {
            lblSwitch.text = "Switch is OFF"
        }
    }
    
    @IBAction func btnLeft(_ sender: Any) {
        if currentPage > 0 {
            currentPage -= 1
            updatePageControl()
        }
    }
    
    @IBAction func btnRight(_ sender: Any) {
        if currentPage < pageControler.numberOfPages {
            currentPage += 1
            updatePageControl()
        }
    }
    
    @IBAction func stpperAction(_ sender: UIStepper) {
        lblValue.text = Int(sender.value).description
    }
    
    @IBAction func btnClick(_ sender: Any) {
        var progress: Float = 0.0
        progressView.progress = progress
        timer = Timer.scheduledTimer(withTimeInterval: 0.10, repeats: true, block:{(timer) in
            progress += 0.01
            self.progressView.progress = progress
            if self.progressView.progress == 1.0 {
                self.progressView.progress = 0.0
            }
        })
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        lblAge.text = "\(Int(sender.value))"
    }
    
}
//MARK: - UpdatePageControl
extension SliderViewController {
    func updatePageControl() {
        pageControler.currentPage = currentPage
    }
}
