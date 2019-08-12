//
//  CallanqueCellAlternativeTableViewCell.swift
//  Les Calanques
//
//  Created by Nicolas Meunier on 12/08/2019.
//  Copyright © 2019 Nicolas Meunier. All rights reserved.
//

import UIKit

class CallanqueCellAlternativeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var calanqueIV: UIImageView!
    
    @IBOutlet weak var nomLabel: UILabel!
    
    var calanque: Calanque? {
        didSet {
            if calanque != nil {
                calanqueIV.image = calanque!.image
                nomLabel.text = calanque!.nom
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
