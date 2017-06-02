//
//  GradientLayer.swift
//  Facemoji
//
//  Created by Kevin Turner on 1/18/17.
//  Copyright © 2017 Kevin Turner. All rights reserved.
//

import UIKit

class GradientLayer: CAGradientLayer {
    override init(){
        super.init()
        self.colors =  [#colorLiteral(red: 0, green: 0.9297465682, blue: 1, alpha: 1).cgColor, #colorLiteral(red: 0.03327740729, green: 0.6346306205, blue: 0.9677230716, alpha: 1).cgColor]
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
