//
//  RotatedBadgeSymbol.swift
//  HelloWorld
//
//  Created by Ranjit on 03/08/20.
//  Copyright © 2020 DrawRect. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
                RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
