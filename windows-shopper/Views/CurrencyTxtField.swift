//
//  CurrencyTxtField.swift
//  windows-shopper
//
//  Created by Juan Bernardo Cruz Ortiz on 6/7/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() { // esta función se desea para reutilizarla en cada pantalla sin tener que estar aplicandole formato de una por una.
        super.awakeFromNib()
        customizeView()
        }

    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder { //Esta función es para que en caso de venir con valores nulos aplique valores default y
    
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
