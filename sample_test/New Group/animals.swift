//
//  animals.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/19/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import Foundation
import Firebase

class animals{
    
    //variables
   var name: String = ""
    var image: String = ""
    
    //functions
    init(dictionary: [String:Any?]){
        
        self.name = dictionary["name"] as! String
        self.image = dictionary["image"] as! String
}
    
    
    init(){}
}
