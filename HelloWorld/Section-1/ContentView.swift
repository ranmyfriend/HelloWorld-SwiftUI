//
//  ContentView.swift
//  HelloWorld
//
//  Created by Ranjith Kumar on 7/18/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(coordinate: CLLocationCoordinate2DMake(34.011286, -116.166868))
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            CircleImage(image: Image("iphone11"))
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Book")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
