//
//  global.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/17/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import Foundation
import UIKit
import Firebase

extension UIViewController{

func navPush(Storyboard: String, Identifier: String)
{
  let storyboard: UIStoryboard = UIStoryboard(name: Storyboard, bundle: nil)
  let vc = storyboard.instantiateViewController(withIdentifier: Identifier)
  self.navigationController?.pushViewController(vc, animated: false)
}
    
    func navPop()
    {
      self.navigationController?.popViewController(animated: true)
    }
    
}


var list_animals: [database] = []



