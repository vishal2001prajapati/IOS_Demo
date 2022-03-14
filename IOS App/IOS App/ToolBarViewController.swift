//
//  ToolBarViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 25/03/22.
//

import UIKit
class ToolBarViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var inputTextName: UITextField!
    
    //MARK: - Array
    var nameOfCity = ["Ahmedabad","Surat","Vadodara","Bhavnagar","Rajkot","Gandhinagar"]
    var pickerview = UIPickerView()
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let cameraButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(clickCamera))
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(clickAdd))
        navigationItem.rightBarButtonItems = [cameraButton,addButton]
        pickerview.delegate = self
        pickerview.dataSource = self
        inputTextName.inputView = pickerview
    }
}

//MARK: - Action Button
extension ToolBarViewController {
    @IBAction func btnRewind(_ sender: Any) {
        lblStatus.text = "Rewind."
    }
    @IBAction func playButton(_ sender: Any) {
        lblStatus.text = "stop."
    }
    @IBAction func fastForwardButton(_ sender: Any) {
        lblStatus.text = "Fast Forward"
    }
}

// MARK; - ToolBarViewController Methods
extension ToolBarViewController {
    @objc func clickCamera() {
        debugPrint("camera Called")
    }
    @objc func clickAdd() {
        debugPrint("Add Called")
    }
}
//MARK: - ToolBarViewController
extension ToolBarViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nameOfCity[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        inputTextName.text = nameOfCity[row]
        inputTextName.resignFirstResponder()
    }
}

//MARK: - UIPickerViewDataSource
extension ToolBarViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nameOfCity.count
    }
}
