//
//  CatTableViewCell.swift
//  Toy3
//
//  Created by Shuyan Li on 2018/10/20.
//  Copyright © 2018年 Shuyan Li. All rights reserved.
//

import UIKit

class CatTableViewCell: UITableViewCell {

    @IBOutlet weak var NameLabel: UILabel!
    

    @IBOutlet weak var ImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
