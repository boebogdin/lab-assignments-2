//
//  CustomBlandPlayerTableViewCell.swift
//  scoreKeepingApp
//
//  Created by Boe Bogdin on 11/3/2022.
//

import UIKit

class CustomBlandPlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var playerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(player: Player) {
        playerLabel.text = player.name
    }

}
