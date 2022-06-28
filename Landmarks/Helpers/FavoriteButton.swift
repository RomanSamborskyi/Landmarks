//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 28.06.2022.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSat: Bool
    var body: some View {
        Button{
            isSat.toggle()
        }label: {
            Label("Tougle Favirite", systemImage: isSat ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSat ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSat: .constant(true))
    }
}
