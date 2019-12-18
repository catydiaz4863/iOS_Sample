//
//  database.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/18/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import Foundation
import Firebase

class database{
    
    //variables
    var animal: String = ""
    
    //functions
    init(dictionary: [String:Any?]){
        
        self.animal = dictionary["animal"] as! String
    }
    
    
    init(){}
}
