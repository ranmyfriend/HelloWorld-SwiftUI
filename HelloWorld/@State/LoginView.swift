//
//  LoginView.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/22/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI

struct LoginView: View {

    @State var emailTxt: String {
        didSet {
            enableNDisableLoginBtn()
        }
    }
    @State var passwordTxt: String {
        didSet {
            enableNDisableLoginBtn()
        }
    }

    func enableNDisableLoginBtn() {
        if emailTxt.isEmpty || passwordTxt.isEmpty {

        }
    }
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
                    .background(Color.pink)
                TextField(
                    "Password",
                    text: $passwordTxt
                )
                    .frame(height: 50)
                    .padding(
                        [.leading,.trailing],10)
                    .background(Color.pink)
                Button(
                    action: {
                        print("Login Tapped!")
                },
                    label: {
                        Text("Login")
                }
                ).frame(
                    width:UIScreen.main.bounds.width-(2*16))
                    .frame(height: 50)
                    .background(Color.pink)
            }
            .padding()
        .navigationBarTitle("Login")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(emailTxt: "", passwordTxt: "")
    }
}
