//
//  ProfilePhotoModifier.swift
//  Bitter
//
//  Created by Cody Morley on 10/26/23.
//

import SwiftUI

struct ProfilePhotoModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.systemBlue))
            .scaledToFill()
            .frame(width: 180, height: 180)
            .clipShape(Circle())
    }
}
