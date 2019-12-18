//
//  tablecell.swift
//  sample_test
//
//  Created by Catalina Diaz on 12/18/19.
//  Copyright © 2019 CleverSolve. All rights reserved.
//

import UIKit

class tablecell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var label: UILabel!
    
}
