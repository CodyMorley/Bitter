//
//  NewUserRegistrationView.swift
//  Bitter
//
//  Created by Cody Morley on 10/24/23.
//

import SwiftUI

struct NewUserRegistrationView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var username = ""
    
    var body: some View {
        VStack {
            //NavigationLink(destination: NewUserProfilePhotoEditorView(),
                           //isActive: $authViewModel.didAuthenticate,
                           //label: { })
            
            AuthenticationHeaderView(text1: "Get started.", text2: "Create your account")
            
            VStack(spacing: 40) {
                InputFieldWithImageView(text: $email, imageName: "envelope", placeholderText: "Email")
                InputFieldWithImageView(text: $username, imageName: "person", placeholderText: "Username")
                InputFieldWithImageView(text: $fullName, imageName: "person", placeholderText: "Full Name")
                InputFieldWithImageView(text: $password, imageName: "lock", placeholderText: "Password", secureField: true)
            }
            .padding(32)
            
            Button {
                authViewModel.registerNewUser(email: email,
                                              password: password,
                                              fullName: fullName,
                                              username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign in")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea()
    }
    
}


#Preview {
    NewUserRegistrationView()
}
