//
//  page2ViewController.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/17/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage
import FirebaseUI

class page2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let storageRef = Storage.storage().reference()
        // Do any additional setup after loading the view.
        
        let reference = storageRef.child(list_animals[1].image)
        print(reference)
        let placeholder = UIImage(named: "wallpaper")
        image.sd_setImage(with: reference, placeholderImage: placeholder)
        
        

    }
   

    @IBAction func goback(_ sender: Any) {
        navPop()
        
    }
    
    
    @IBOutlet weak var image: UIImageView!
}
