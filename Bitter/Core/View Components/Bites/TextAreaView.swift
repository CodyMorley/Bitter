//
//  TextAreaView.swift
//  Bitter
//
//  Created by Cody Morley on 10/24/23.
//

import SwiftUI

struct TextAreaView: View {
    @Binding var text: String
    let placeholderText: String
    
    init(text: Binding<String>, placeholderText: String) {
        self._text = text
        self.placeholderText = placeholderText
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            TextEditor(text: $text)
                .padding(4)
            
            if text.isEmpty {
                Text(placeholderText)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
        }
        .font(.body)
    }
}

#Preview {
    TextAreaView(text: .constant(""), placeholderText: "Go ahead, take a bite...")
}
