//
//  nav.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/17/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import Foundation
import UIKit

class nav: UINavigationController{
    
    
    override func viewDidAppear(_ animated: Bool) {
    let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "id_main")
    self.pushViewController(vc, animated: false)
    }
    
    
}
