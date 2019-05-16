//
//  Extensions.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import Foundation

let defaultDateFormat = "eeee dd 'de' MMM 'de' yyyy"
let defaultDateLocale = "es_ES"

extension Date {
    
    var defaultFormatLocale: String {
        return toFormattedString()
    }
    
    
    func toFormattedString(with format: String = defaultDateFormat,
                           locale: String = defaultDateLocale) -> String {
        let subjectDateFormatted = DateFormatter()
        
        subjectDateFormatted.locale = Locale(identifier: locale)
        subjectDateFormatted.dateFormat = format
        
        return subjectDateFormatted.string(from: self)
    }
}
