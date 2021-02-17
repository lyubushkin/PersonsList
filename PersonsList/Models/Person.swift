//
//  Person.swift
//  PersonsList
//
//  Created by Lyubushkin on 16.02.2021.
//

struct Person {
    let name: String
    let surName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
}

extension Person {
    
    static func getPerson(from manager: DataManager) -> Person? {
        
        if manager.names.count > 0,
           manager.surNames.count > 0,
           manager.phones.count > 0,
           manager.emails.count > 0 {
            
            let name = manager.names.remove(at: Int.random(in: 0..<manager.names.count))
            let surName = manager.surNames.remove(at: Int.random(in: 0..<manager.surNames.count))
            let phone = manager.phones.remove(at: Int.random(in: 0..<manager.phones.count))
            let email = manager.emails.remove(at: Int.random(in: 0..<manager.emails.count))
            
            return Person(name: name,
                          surName: surName,
                          phone: phone,
                          email: email)
        }
            return nil
    }
}



