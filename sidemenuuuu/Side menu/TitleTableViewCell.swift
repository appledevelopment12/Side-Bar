//
//  TitleTableViewCell.swift
//  Side menu
//
//  Created by Rajeev on 30/03/23.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
