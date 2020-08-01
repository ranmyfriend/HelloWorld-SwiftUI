//
//  LoginView.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/22/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI

struct LoginView: View {

    @State var emailTxt: String = ""
    @State var passwordTxt: String = ""

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
//                        NetworkHelper.default.getAllMovies()
                },
                    label: {
                        Text("Login")
                }
                )
//                    .frame(
//                    width:UIScreen.main.bounds.width-(2*16))
//                    .frame(height: 50)
//                    .background(Color.pink)
            }
            .padding()
        .navigationBarTitle("Login")
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
