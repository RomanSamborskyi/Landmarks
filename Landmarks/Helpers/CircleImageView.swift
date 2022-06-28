//
//  CircleImageView.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 25.06.2022.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image
     var body: some View {
        image
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
