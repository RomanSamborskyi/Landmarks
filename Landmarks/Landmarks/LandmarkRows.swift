//
//  LandmarkRows.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 26.06.2022.
//

import SwiftUI

struct LandmarkRows: View {
    var landmark:Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
        Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRows_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        Group{
        LandmarkRows(landmark: landmarks[0])
        LandmarkRows(landmark: landmarks[1])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}

