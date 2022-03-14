//  ViewController.swift
//  Ios Advance
//  Created by Vishal Prajapati on 28/01/22.
import UIKit
class ViewController: UIViewController {
    //MARK:- outlate variable
    @IBOutlet weak var labeldisplay: UILabel!
    
    
    //MARK:- variable
    var labelstr : String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        labeldisplay.text = labelstr
    }
}

//MARK:- outlet action
extension ViewController {
    @IBAction func anything(_ sender: UIButton) {
        let secondviewcontroller : UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "thirdViewController") as? ThirdViewController)!
        self.navigationController?.pushViewController(secondviewcontroller, animated: true)
    }
}
