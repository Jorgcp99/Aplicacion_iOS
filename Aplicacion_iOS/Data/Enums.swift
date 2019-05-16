//
//  Enums.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import Foundation

enum TeacherType:  CustomStringConvertible {
    case intern
    case extern
    
    var description: String {
        switch self{
        case .intern:
            return teacher_type_intern.toLocalized()
        case .extern:
            return teacher_type_extern.toLocalized()
        }
    }
}

enum Salary: CustomStringConvertible {
    case junior (salary: Float)
    case medium (salary: Float)
    case senior (salary: Float)
    
    
    var description: String{
        switch self{
        case .junior:
            return salary_type_junior.toLocalized()
        case .medium:
            return salary_type_medium.toLocalized()
        case .senior:
            return salary_type_senior.toLocalized()
        }
    }
}
