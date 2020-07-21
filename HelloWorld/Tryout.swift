//
//  Tryout.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/19/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI

struct Tryout: View {
    var body: some View {
        HStack {
            CircleImage(image: Image("iphone11"))
            VStack {
                Text("Ranjith Kumar").font(.title)
                 Divider()
                Text("iOS Engineer")
            }
        }
    }
}

struct Tryout_Previews: PreviewProvider {
    static var previews: some View {
        Tryout()
    }
}
