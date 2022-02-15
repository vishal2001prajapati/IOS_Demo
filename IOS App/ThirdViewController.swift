//  ThirdViewController.swift
//  Ios Advance
//  Created by Vishal Prajapati on 28/01/22.
import UIKit
class ThirdViewController: UIViewController {
    //MARK:- outlet variable
    @IBOutlet weak var EnterSome: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//MARK:- outlet action
extension ThirdViewController {
    @IBAction func OK(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        if let nextViewController = storyBoard.instantiateViewController(withIdentifier: "viewcontroller") as? ViewController {
            nextViewController.labelstr  = EnterSome.text
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
}
