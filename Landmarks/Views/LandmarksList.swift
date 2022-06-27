//
//  LendmarksList.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 27.06.2022.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationView{
        List(landmarks) {   landmark in
            NavigationLink{
                LandmarkDetail(landmark: landmark)
            }label: {
                
                    LandmarkRows(landmark: landmark)
                 }
        
              }
        .navigationTitle("Landmarks")
           }
        }
    }


struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
