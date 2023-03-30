//
//  TitileTableViewCell.swift
//  Side menu
//
//  Created by Rajeev on 30/03/23.
//

import UIKit

class TitileTableViewCell: UITableViewCell {

    @IBOutlet var imageIcon: UIImageView!
    @IBOutlet var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
