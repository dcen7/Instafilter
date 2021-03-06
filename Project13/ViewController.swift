//
//  ViewController.swift
//  Project13
//
//  Created by Mehmet Deniz Cengiz on 6/2/20.
//  Copyright © 2020 Deniz Cengiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var intensity: UISlider!
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "instafilter"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
        
    }
    
    @objc func importPicture () {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        dismiss(animated: true)
        currentImage = image
    }
    @IBAction func changeFilter(_ sender: UIButton) {
        
    }
    

    @IBAction func save(_ sender: UIButton) {
        
    }
    
    @IBAction func intensityChanged(_ sender: Any) {
    }
}

