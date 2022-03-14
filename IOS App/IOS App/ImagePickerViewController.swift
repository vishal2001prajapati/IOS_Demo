//
//  ImagePickerViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 22/03/22.
//

import UIKit

class ImagePickerViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//MARK:- ActionOutlets
extension ImagePickerViewController: UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    @IBAction func selectImg(_ sender: UIButton) {
        let imageController = UIImagePickerController()
        imageController.delegate = self
        imageController.sourceType = .photoLibrary
        self.present(imageController, animated: true, completion: nil)
    }
}
//MARK: - Function
extension ImagePickerViewController {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.contentMode = .scaleAspectFit
            imageView.image = pickedImage
            self.dismiss(animated: true, completion: nil)
        }
        
    }
}
