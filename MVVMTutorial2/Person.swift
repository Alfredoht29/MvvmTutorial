//
//  Person.swift
//  MVVMTutorial
//
//  Created by Emilio Perez on 26/03/23.
//

import SwiftUI

struct Person:Identifiable{
    var id=UUID()
    var name: String
    var email: String
    var phoneNumber:String
}
