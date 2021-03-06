//
//  CircleImage.swift
//  Landmarks
//
//  Created by 佐藤晋太朗 on 2021/03/07.
//

import SwiftUI

struct CircleImage: View {
        var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                       .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
