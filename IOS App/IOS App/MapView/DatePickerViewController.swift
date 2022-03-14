//
//  DatePickerViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 28/03/22.
//

import UIKit

class DatePickerViewController: UIViewController {
    
    //MARK: - OutLets
    
    @IBOutlet weak var datePickerTxt: UITextField!
    let datePicker = UIDatePicker()
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }
}
//MARK: - datePicker Create
extension DatePickerViewController {
    func createDatePicker() {
        //toolBar
        let toolBar = UIToolbar()
        datePicker.preferredDatePickerStyle = .wheels
        
        toolBar.sizeToFit()
        
        //Bar Button
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolBar.setItems([doneButton], animated: true)
        
        //assign toolbar
        datePickerTxt.inputAccessoryView = toolBar
        
        //assign value of datePicker to textfield
        datePickerTxt.inputView = datePicker
        //date picker mode
        datePicker.datePickerMode = .date
        //        let datePicker = UIDatePicker()
        //        datePicker.preferredDatePickerStyle = .compact
        //        let textField = UITextField(frame: CGRect(origin: view.center,
        //                                                  size: CGSize(width: 60, height: 30)))
        
        datePickerTxt.frame = CGRect(origin: view.center,
                                     size: CGSize(width: 60, height: 30))
        datePickerTxt.inputView = datePicker
        
        self.view.addSubview(datePickerTxt)
    }
    @objc func donePressed() {
        if let datePicker = self.datePickerTxt.inputView as? UIDatePicker {
            let dateFormatter = DateFormatter()
            //time
            //            dateFormatter.timeStyle = .short
            dateFormatter.dateStyle = .medium
            
            self.datePickerTxt.text = dateFormatter.string(from: datePicker.date)
        }
        self.view.endEditing(true)
    }
}
