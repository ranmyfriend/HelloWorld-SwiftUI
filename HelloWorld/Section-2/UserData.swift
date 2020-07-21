//
//  UserData.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/20/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {

   @Published var showFavoritesOnly = false
   @Published var landmarks = landmarkData
}

