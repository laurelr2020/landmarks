//
//  CircleImage.swift
//  Landmarks
//
//  Created by Regan Laurell on 10/12/19.
//  Copyright © 2019 Regan Laurell. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("puppyofbilbao")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
