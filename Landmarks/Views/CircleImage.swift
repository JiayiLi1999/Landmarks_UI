//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jiayi Li on 2022/6/20.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .shadow(radius: 4)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
