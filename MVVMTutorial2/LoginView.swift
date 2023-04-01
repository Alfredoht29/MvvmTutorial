//
//  LoginView.swift
//  MVVMTutorial
//
//  Created by Emilio Perez on 26/03/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username=""
    @State private var password=""
    @State private var wrongUsername=0
    @State private var wrongPassword=0
    @State private var showLoginScreen=false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Login")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username",text:$username)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUsername))
                    
                    SecureField("Contraseña",text:$password)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width:300,height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPassword))
                    
                    Button{
                        loginauth(username: username, password: password)
                    }label: {
                        Text("Login")
                        .contentShape(Rectangle())
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300,height:60)
                        .background(Color.blue)
                        .cornerRadius(10)
                        NavigationLink(destination:PeopleView(), isActive: $showLoginScreen){EmptyView()}
                    }.padding()
                }
            }
        }
    }
    func loginauth(username:String,password:String){
        if username.lowercased()=="admin123"{
            wrongUsername=0
            if password.lowercased()=="pass123"{
                wrongPassword=0
                showLoginScreen=true
            }
        }
        else{
            wrongPassword=2
            wrongUsername=2
        }
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
