//
//  MoviesView.swift
//  HelloWorld
//
//  Created by Ranjit on 01/08/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello World")
                }
            }
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}
