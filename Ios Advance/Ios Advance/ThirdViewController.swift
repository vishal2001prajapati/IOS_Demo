//
//  ThirdViewController.swift
//  Ios Advance
//
//  Created by Vishal Prajapati on 28/01/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var EnterSome: UITextField!
    
    @IBAction func OK(_ sender: UIButton) {
        
         let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        if let nextViewController = storyBoard.instantiateViewController(withIdentifier: "viewcontroller") as? ViewController {
            nextViewController.labelstr  = EnterSome.text
               self.navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
