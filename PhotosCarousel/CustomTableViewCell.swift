//
//  CustomTableViewCell.swift
//  PhotosCarousel
//
//  Created by Dragos Neagu on 06/03/2017.
//  Copyright © 2017 Dragos Neagu. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
