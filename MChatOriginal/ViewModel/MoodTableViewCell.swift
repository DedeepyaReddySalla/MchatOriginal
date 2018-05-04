//
//  MoodTableViewCell.swift
//  MChatOriginal
//
//  Created by Dedeepya reddy Salla on 4/23/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

import UIKit

class MoodTableViewCell: UITableViewCell {

    @IBOutlet weak var emotionImgView: UIImageView!
    @IBOutlet weak var desc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
