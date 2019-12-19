//
//  ViewController.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/17/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    let db = Firestore.firestore()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        db.collection("cats").getDocuments() { (querySnapshot, err) in
                         if let err = err {
                             print("Error getting documents: \(err)")
                         } else {
                             for document in querySnapshot!.documents {
                                print("\(document.documentID) => \(document.data())")
                               list_animals.append(animals(dictionary: document.data()))
                             }
                         }
                     }
    }

    
    @IBAction func button1click(_ sender: Any) {
        
        navPush(Storyboard: "Main", Identifier: "page2")
    }
    
    @IBAction func button2click(_ sender: Any) {
        
        navPush(Storyboard: "Main", Identifier: "page3")
    }
    
    //this is an alert 
    @IBAction func alert(_ sender: Any) {
        // this code will display an alert
        let alert = UIAlertController(title: "This is an alert!", message: "🎲 Sample Alert from Main Page 👩🏻‍💻", preferredStyle: .alert)
         
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        okAction.setValue(UIColor.black, forKey: "titleTextColor")
         
        alert.addAction(okAction)
         
        self.present(alert, animated: true)
    }
    
}

