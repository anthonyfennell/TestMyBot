//
//  AFModel.swift
//  TestMyBots
//
//  Created by Anthony Michael Fennell on 8/14/15.
//  Copyright © 2015 Ford Prefect. All rights reserved.
//

import Foundation

class AFPerson {
    var name: NSString!
    var age: Int!
    
    init() {
        name = "John"
        age = 25
    }
    
    func birthday() {
        age = age + 1
    }
}

class AFModel {
    static let sharedModel = AFModel()
    let dateCreated = NSDate()
    var people = [AFPerson]()
    
    init() {
        
    }
    
    func addPerson(name: String, age: Int) -> AFPerson {
        let person = AFPerson()
        person.name = name
        person.age = age
        people.append(person)
        return person
    }
    
    func removePerson(person: AFPerson) {
        for (var i = 0; i < people.count; i++) {
            if people[i] === person {
                people.removeAtIndex(i)
            }
        }
    }
}








