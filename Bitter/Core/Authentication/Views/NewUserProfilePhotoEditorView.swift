//
//  NewUserProfilePhotoEditorView.swift
//  Bitter
//
//  Created by Cody Morley on 10/26/23.
//

import SwiftUI

struct NewUserProfilePhotoEditorView: View {
    var body: some View {
        VStack {
            AuthenticationHeaderView(text1: "Add a profile photo",
                                     text2: "")
            
            Button {
                //TODO: add image picker logic
            } label: {
                Image("add-profile-photo")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.systemBlue))
                    .frame(width: 180, height: 180)
                    .padding(.top, 44)
                    .scaledToFill()
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NewUserProfilePhotoEditorView()
}
