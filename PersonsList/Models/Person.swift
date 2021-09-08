//
//  Person.swift
//  PersonsList
//
//  Created by Николай on 08.09.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
