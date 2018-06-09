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

    override func draw(_ rect: CGRect) { //Esta funcion se puso para insertar el simbolo de dinero (currency) a los objetos label creados de clase CurrencyTxtField se necesita agregar desde afuera de la clase @IBDesignable
        
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8400420368, green: 0.8400420368, blue: 0.8400420368, alpha: 0.7979184503)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
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
        
        clipsToBounds = true
        
        if let p = placeholder { //Esta función es para que en caso de venir con valores nulos aplique valores default y
    
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
