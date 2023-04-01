//
//  ContentView.swift
//  MVVMTutorial
//
//  Created by Emilio Perez on 26/03/23.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var ViewModel = PersonViewModel()
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView {
                ForEach(ViewModel.people){
                    person in HStack{
                        Text(person.name).font(.title).fontWeight(.bold)
                        
                        Spacer()
                        VStack(alignment:.trailing){
                            Text(person.phoneNumber)
                            Text(person.email)
                        }
                    }
                    .frame(height:80)
                    .padding(12)
                }
            }
            Menu("Menu".uppercased()){
                Button("Revierte el orden", action:{ ViewModel.reverseOrder()})
                Button("Mix", action:{ ViewModel.shuffleOrder()})
                Button("Elimina el primero", action:{ ViewModel.removeFirstPerson()})
                Button("Elimina el ultimo", action: {ViewModel.removeLastPerson()})
            }
            .padding(40)
        }.navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
