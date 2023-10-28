//
//  ImagePicker.swift
//  Bitter
//
//  Created by Cody Morley on 10/26/23.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var pickedImage: UIImage?
    @Environment(\.presentationMode) var presentationMode
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[.originalImage] as? UIImage else { return }
            parent.pickedImage = image
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = context.coordinator
        return imagePickerController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}
