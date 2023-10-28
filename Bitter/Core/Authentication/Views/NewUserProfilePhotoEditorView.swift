//
//  NewUserProfilePhotoEditorView.swift
//  Bitter
//
//  Created by Cody Morley on 10/26/23.
//

import SwiftUI

struct NewUserProfilePhotoEditorView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    @State private var showPicker = false
    @State private var pickedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack {
            AuthenticationHeaderView(text1: "Let's get started",
                                     text2: "Add a photo")
            
            Button {
                showPicker.toggle()
            } label: {
                if let profileImage {
                    profileImage
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfilePhotoModifier())
                } else {
                    Image("add-profile-photo")
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfilePhotoModifier())
                }
            }
            .padding(.top, 44)
            .sheet(isPresented: $showPicker, onDismiss: setProfileImage) {
                ImagePicker(pickedImage: $pickedImage)
            }
            
            if let pickedImage {
                Button {
                    authViewModel.uploadProfilePhoto(pickedImage)
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NewUserProfilePhotoEditorView()
        .environmentObject(AuthenticationViewModel())
}


extension NewUserProfilePhotoEditorView {
    private func setProfileImage() {
        guard let pickedImage else { return }
        profileImage = Image(uiImage: pickedImage)
    }
}
