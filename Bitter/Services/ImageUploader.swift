//
//  ImageUploader.swift
//  Bitter
//
//  Created by Cody Morley on 10/28/23.
//

import Firebase
import FirebaseStorage
import UIKit

struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping (String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = UUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        ref.putData(imageData) { _, error in
            if let error {
                NSLog("DEBUG: Failed to upload an image. With Error Description:\n\(error.localizedDescription)\nAnd Full Erorr:\n\(error)")
                return
            }
            
            ref.downloadURL { url, _ in
                guard let url = url?.absoluteString else { return }
                completion(url)
            }
        }
    }
}
