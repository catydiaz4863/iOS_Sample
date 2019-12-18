//
//  Page3ViewController.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/18/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import UIKit

class Page3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    let firstArray: [String] = ["cat", "dog", "lizard", "elephant", "horse"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! tablecell
        cell.label.text = firstArray[indexPath.row]
        return cell
    }
    


    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func goback(_ sender: Any) {
        navPop()
    }
    
}
