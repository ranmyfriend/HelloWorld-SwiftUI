//
//  LoginView.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/22/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI


/*
 
 Typically we create button and will present an alert on the action, and that alert has some actions based on that it will perform based on that - old way
 
 But in SwiftUI presenting an simple alert we can simply call .alert function with @State Property. which decides should show the alert or not.
 
 So When we set State Property as True or false, automatically does everything. Here is the Magic.
 
 
 */

struct LoginView: View {

    @State var emailTxt: String = ""
    @State var passwordTxt: String = ""
    @State private var showAlert: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                TextField(
                    "Email",
                    text: $emailTxt)
                    .frame(height: 50)
                    .padding(
                        [.leading,
                         .trailing],10)
                    .background(Color.gray)
                TextField(
                    "Password",
                    text: $passwordTxt
                )
                    .frame(height: 50)
                    .padding(
                        [.leading,.trailing],10)
                    .background(Color.gray)
                Button(
                    action: {
                        print("Login Tapped!")
                        self.showAlert = true
//                        NetworkHelper.default.getAllMovies()
                        
                    
                },
                    label: {
                        Text("Login")
                })
                
                    
//                    .frame(
//                    width:UIScreen.main.bounds.width-(2*16))
//                    .frame(height: 50)
//                    .background(Color.pink)
                
           
            }
                
            .padding()
        .navigationBarTitle("Login")
            .alert(isPresented: $showAlert) {
                return Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
                
            }
          
        }
    }
}

import Request

class NetworkHelper {
    static let `default` = NetworkHelper()
    private init() {}
    
    func getAllMovies() {
        Request {
            Url("http://www.omdbapi.com/?t=Batman")
            Header.Accept(.json)
        }
        .onData { data in
            print("Response:\(data)")
        }
        .onError { error in
            print("Error:\(error)")
        }
        .call()
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
