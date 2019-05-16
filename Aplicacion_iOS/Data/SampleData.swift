//
//  SampleData.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import UIKit

/************** DEFAULT DATA **************/
// MARK: -  Create list of Students
// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
let defaultStudents: [Student] = [Student(photo: "Student1",
                                          name: "Óliver",
                                          age: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                          month: 5)),
                                          email: "oliver@gmail.com"),
                                  Student(photo: "Student1",
                                          name: "Ángel",
                                          age: Calendar.current.date(from: DateComponents(year: 2013,
                                                                                          month: 9)),
                                          email: "angel@gmail.com"),
                                  Student(photo: "Student1",
                                          name: "Sara",
                                          age: Calendar.current.date(from: DateComponents(year: 1984,
                                                                                          month: 9)),
                                          email: "sara@gmail.com"),
                                  Student(photo: "Student1",
                                          name: "Eduardo",
                                          age: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                          month: 12)),
                                          email: "eduardo@gmail.com"),
                                  Student(photo: "Student1",
                                          name: "María",
                                          age: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                          month: 4)),
                                          email: "maria@gmail.com"),
                                  Student(photo: "Student1",
                                          name: "Miguel",
                                          age: Calendar.current.date(from: DateComponents(year: 1983,
                                                                                          month: 6)),
                                          email: "miguel@gmail.com"),
                                  Student(photo: "Student1",
                                          name: "Lucía",
                                          age: Calendar.current.date(from: DateComponents(year: 1995,
                                                                                          month: 2)),
                                          email: "lucia@gmail.com")]


// MARK: -  Create list of Teachers
// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
// With .extern or .senior(amount) we represent the Enum value for this properties.
let defaultTeachers: [Teacher] = [Teacher(photo: "teacher3",
                                          name: "David",
                                          age: Calendar.current.date(from: DateComponents(year: 1985,
                                                                                          month: 4)),
                                          email: "david@teacher.com",
                                          type: .extern,
                                          salary: .senior(salary: 50.0)),
                                  Teacher(photo: "teacher2",
                                          name: "Jaime",
                                          age: Calendar.current.date(from: DateComponents(year: 1974,
                                                                                          month: 6)),
                                          email: "jaime@teacher.com",
                                          type: .intern,
                                          salary: .medium(salary: 40.0)),
                                  Teacher(photo: "teacher4",
                                          name: "Pedro",
                                          age: Calendar.current.date(from: DateComponents(year: 1979,
                                                                                          month: 9)),
                                          email: "pedro@teacher.com",
                                          type: .intern,
                                          salary: .senior(salary: 50.0)),
                                  Teacher(photo: "teacher5",
                                          name: "Daniel",
                                          age: Calendar.current.date(from: DateComponents(year: 1981,
                                                                                          month: 2)),
                                          email: "daniel@teacher.com",
                                          type: .intern,
                                          salary: .senior(salary: 50.0)),
                                  Teacher(photo: "teacher1",
                                          name: "Laura",
                                          age: Calendar.current.date(from: DateComponents(year: 1980,
                                                                                          month: 10)),
                                          email: "laura@teacher.com",
                                          type: .extern,
                                          salary: .junior(salary: 20.0))]


// MARK: - Create list of Subjects
// Use a list.filter for get different values for each subject
// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
let defaultSubjects: [Subject] = [Subject(photo: "Subject_android",
                                          name: "Android",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 9)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("a") ?? false}),
                                  Subject(photo: "Subject_bbdd",
                                          name: "iOS",
                                          year: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                           month: 3)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("e") ?? false}),
                                  Subject(photo: "Subject_iOS",
                                          name: "Programacion",
                                          year: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                           month: 4)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("i") ?? false}),
                                  Subject(photo: "Subject_english",
                                          name: "Bases de datos",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 10)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("o") ?? false}),
                                  Subject(photo: "Subject_android",
                                          name: "Inglés",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 9)),
                                          teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                                          students: defaultStudents.filter{$0.name?.contains("u") ?? false})]
