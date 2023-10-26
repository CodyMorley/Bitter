//
//  InputFieldWithImageView.swift
//  Bitter
//
//  Created by Cody Morley on 10/24/23.
//

import SwiftUI

struct InputFieldWithImageView: View {
    @Binding var text: String
    let imageName: String
    let placeholderText: String
    var secureField: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if secureField ?? false {
                    SecureField(placeholderText, text: $text)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                } else {
                    TextField(placeholderText, text: $text)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                }
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

#Preview {
    InputFieldWithImageView(text: .constant(""), imageName: "envelope", placeholderText: "Email")
}
