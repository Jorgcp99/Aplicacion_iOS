//
//  StringExtension.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import Foundation

extension String {
    
    func toLocalized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}

let salary_type_junior = "salary_type_junior"
let salary_type_medium = "salary_type_medium"
let salary_type_senior = "salary_type_senior"

let teacher_type_extern = "teacher_type_extern"
let teacher_type_intern = "teacher_type_intern"

let message_birthdate = "birthdate"
