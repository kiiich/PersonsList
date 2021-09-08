//
//  PersonsManager.swift
//  PersonsList
//
//  Created by Николай on 08.09.2021.
//

import Foundation

class DataManager {
    
    static func getPersons() -> [Person] {
        
        var names = [
            "John",
            "Aaron",
            "Tim",
            "Ted",
            "Steven"
        ]
        
        var surnames = [
            "Smith",
            "Dow",
            "Isaacson",
            "Pennyworth",
            "Jankins"]
        
        var emails = [
            "cat@gmail.com",
            "dog@gmail.com",
            "fish@gmail.com",
            "ox@gmail.com",
            "mouse@gmail.com"
            
        ]
        
        var phones = [
            "+79161112233",
            "+79162222233",
            "+79163332233",
            "+79164442233",
            "+79165552233",
        ]
        
        var result: [Person] = []
        
        for _ in 1...5 {
            
            if names.count == 0 || surnames.count == 0 ||
                emails.count == 0 || phones.count == 0 {
                
                break
            }
            
            let name = names.remove(at: Int.random(in: 0..<names.endIndex))
            let surname = surnames.remove(at: Int.random(in: 0..<surnames.endIndex))
            let email = emails.remove(at: Int.random(in: 0..<emails.endIndex))
            let phone = phones.remove(at: Int.random(in: 0..<phones.endIndex))
            
            result.append(
                Person(
                    name: name,
                    surname: surname,
                    email: email,
                    phone: phone)
            )
        }
        
        return result
    }
}
