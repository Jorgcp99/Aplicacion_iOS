//
//  Subjects.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//


import Foundation

class Subject: CustomStringConvertible {
    var photo: String?
    var name: String?
    var year: Date?
    var teachers: [Teacher]?
    var students: [Student]?
    
    convenience init(photo:String? = nil, name: String? = nil, year: Date? = nil, teachers: [Teacher]? = nil, students: [Student]? = nil ) {
        self.init()
        
        self.photo=photo
        self.name=name
        self.year=year
        self.teachers=teachers
        self.students=students
    }
    
    var description: String {
        var description = ""
        description+="name: \(String(describing: self.name))\n"
        description+="surname: \(String(describing: self.year))\n"
        description+="age: \(String(describing: self.teachers))\n"
        description+="email: \(String(describing: self.students))\n"
        return description
        
    }
}
