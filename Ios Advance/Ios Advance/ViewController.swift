//
//  ViewController.swift
//  Ios Advance
//
//  Created by Vishal Prajapati on 28/01/22.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBAction func anything(_ sender: UIButton) {
        let secondviewcontroller : UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "thirdViewController") as? ThirdViewController)!
        
        self.navigationController?.pushViewController(secondviewcontroller, animated: true)
    }
    
    @IBOutlet weak var labeldisplay: UILabel!
    
    var labelstr : String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labeldisplay.text = labelstr
        // Do any additional setup after loading the view.
    }


}

