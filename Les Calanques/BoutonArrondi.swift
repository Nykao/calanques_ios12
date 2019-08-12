//
//  BoutonArrondi.swift
//  Les Calanques
//
//  Created by Nicolas Meunier on 13/08/2019.
//  Copyright © 2019 Nicolas Meunier. All rights reserved.
//

import UIKit

class BoutonArrondi: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    func setup() {
        layer.cornerRadius = 10
    }
}
