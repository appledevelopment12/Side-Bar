//
//  TitleTableViewCell.swift
//  tempsid
//
//  Created by Rajeev on 31/03/23.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    
    @IBOutlet var lbl: UILabel!
    
    @IBOutlet var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
