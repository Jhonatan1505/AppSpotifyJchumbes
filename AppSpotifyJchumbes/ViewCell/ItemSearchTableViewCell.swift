//
//  ItemSearchTableViewCell.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 4/06/22.
//

import UIKit

class ItemSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
