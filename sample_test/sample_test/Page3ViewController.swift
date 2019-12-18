//
//  Page3ViewController.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/18/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import UIKit
import Firebase

class Page3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //     🌟 VARIABLES 🌟 //
    let firstArray: [String] = ["cat", "dog", "lizard", "elephant", "horse"]
   
    
    
    override func viewDidAppear(_ animated: Bool) {
      
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list_animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! tablecell
        
        
        cell.label.text = list_animals[indexPath.row].animal
        return cell
    }
    


    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func goback(_ sender: Any) {
        navPop()
    }
    
}
