//
//  ItemPlaylistDetailTableViewCell.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 1/06/22.
//

import UIKit

class ItemPlaylistDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
