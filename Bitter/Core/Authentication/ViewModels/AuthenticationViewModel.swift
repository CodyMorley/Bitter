//
//  AuthenticationViewModel.swift
//  Bitter
//
//  Created by Cody Morley on 10/25/23.
//

import Firebase
import SwiftUI


class AuthenticationViewModel: ObservableObject {
    @Published var session: FirebaseAuth.User?
    @Published var didAuthenticateNewUser = false
    
    private var tempSession: FirebaseAuth.User?
    
    init() {
        self.session = Auth.auth().currentUser
    }
    
    
    func login(with email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error {
                NSLog("DEBUG: Failed to sign in with email: \(email) and password: \(password)\n\(error)\n\(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {
                NSLog("ERROR: Failed to get authentication result in login flow.)")
                return
            }
            
            self.session = user
            NSLog("DEBUG: Successful registration")
            NSLog("DEBUG: user ID for session is: \(String(describing: self.session?.uid))")
        }
    }
    
    func registerNewUser(email: String, password: String, fullName: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error {
                NSLog("DEBUG: Failed to register new user with error: \n\(error)\n\(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {
                NSLog("ERROR: Failed to get authentication result in registration flow.)")
                return
            }
            
            //self.session = user
            //NSLog("DEBUG: Successful registration")
            //NSLog("DEBUG: user ID for session is: \(String(describing: self.session?.uid))")
            
            self.tempSession = user
            
            let userData = ["email" : email,
                        "username" : username.lowercased(),
                        "fullName" : fullName,
                        "uid" : user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(userData) { error in
                    if let error {
                        NSLog("DEBUG: Failed to set registration data for user \(username): \n\(error)\n\(error.localizedDescription)")
                        return
                    }
                    self.didAuthenticateNewUser = true
                }
        }
    }
    
    func logout() {
        session = nil
        
        do {
            try Auth.auth().signOut()
        } catch {
            NSLog("DEBUG: Error signing out: \n\(error)\n\(error.localizedDescription)")
        }
    }
    
    func uploadProfilePhoto(_ image: UIImage) {
        guard let uid = tempSession?.uid else { return }
        
        ImageUploader.uploadImage(image: image) { url in
            Firestore.firestore().collection("users")
                .document(uid)
                .updateData(["profilePhotoUrl" : url]) { error in
                    if let error {
                        NSLog("Could not update profile photo with photo url: \(url)\nError Description: \n\(error.localizedDescription)\n Full Error:\n\(error)")
                        return
                    }
                    self.endTempSessionWithSuccess()
                }
        }
    }
    
    private func endTempSessionWithSuccess() {
        session = tempSession
    }
    
}
