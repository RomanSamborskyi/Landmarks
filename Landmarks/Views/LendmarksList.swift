//
//  LendmarksList.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 27.06.2022.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        List(landmarks) {
           landmark in
            LandmarkRows(landmark: landmark)
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
