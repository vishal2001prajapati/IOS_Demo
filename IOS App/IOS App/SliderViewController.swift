//  SliderViewController.swift
//  IOS App
//  Created by Vishal Prajapati on 15/03/22.
import UIKit

class SliderViewController: UIViewController {
    
    //MARK: - Variables
    var timer = Timer()
    var currentPage = Constant.zero
    
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
        stepper.stepValue = Constant.stepValue
        progressView.progress = Float(Constant.progressValue)
        updatePageControl()
    }
}

//MARK: - ActionButton
extension SliderViewController {
    @IBAction func stateChange(_ sender: UISwitch) {
        lblSwitch.text = simpleSwitch.isOn ? Constant.on : Constant.off
    }
    
    @IBAction func btnLeft(_ sender: Any) {
        if currentPage > Constant.zero {
            currentPage -= Constant.one
            updatePageControl()
        }
    }
    
    @IBAction func btnRight(_ sender: Any) {
        if currentPage < pageControler.numberOfPages {
            currentPage += Constant.one
            updatePageControl()
        }
    }
    
    @IBAction func stpperAction(_ sender: UIStepper) {
        lblValue.text = Int(sender.value).description
    }
    
    @IBAction func btnClick(_ sender: Any) {
        var progress: Float = Float(Constant.progressValue)
        progressView.progress = progress
        timer = Timer.scheduledTimer(withTimeInterval: Constant.withTimeInterval, repeats: true, block:{(timer) in
            progress += Float(Constant.progressIncreaseValue)
            self.progressView.progress = progress
            if self.progressView.progress == Float(Constant.stepValue) {
                self.progressView.progress = Float(Constant.progressValue)
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
