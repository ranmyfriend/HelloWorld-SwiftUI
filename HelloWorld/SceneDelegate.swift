//
//  SceneDelegate.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/18/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: LoginView())
            self.window = window
            window.makeKeyAndVisible()
        } else {
            fatalError("windowScene missing")
        }
    }
   
}

