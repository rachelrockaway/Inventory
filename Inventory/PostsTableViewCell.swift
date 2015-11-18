//
//  PostsTableViewCell.swift
//  
//
//  Created by Rachel Stevenson on 11/17/15.
//
//

import Parse
import ParseUI
import UIKit
import Bolts

class PostsTableViewCell: UITableViewCell {
    

    @IBOutlet weak var postImageView: PFImageView!

    @IBOutlet weak var postCaption: UILabel!

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
