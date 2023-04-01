//
//  PersonViewModel.swift
//  MVVMTutorial
//
//  Created by Emilio Perez on 26/03/23.
//

import SwiftUI

class PersonViewModel:ObservableObject{
    @Published var people:[Person]=[]
    
    init(){
        addPeople()
    }
    
    func addPeople(){
        people=peopleData
    }
    
    func shuffleOrder(){
        people.shuffle()
    }
    func reverseOrder(){
        people.reverse()
    }
    func removeLastPerson(){
        people.removeLast()
    }
    func removeFirstPerson(){
        people.removeFirst()
    }
}
let peopleData=[
   // Person(name: "Itzel Muñoz", email: "test@gmail.com", phoneNumber: "229111111"),
    Person(name: "Miguel Gomez", email: "test@gmail.com", phoneNumber: "229111111"),
    Person(name: "Emilio Perez", email: "test@gmail.com", phoneNumber: "229111111"),
    Person(name: "Marshall Matters", email: "test@gmail.com", phoneNumber: "229111111"),
    Person(name: "Roman Vazquez", email: "test@gmail.com", phoneNumber: "229111111")
]
