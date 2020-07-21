 //
//  CircleImage.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/19/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
            image
            .clipShape(Circle())
            .overlay(Circle()
            .stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("iphone11"))
    }
}
