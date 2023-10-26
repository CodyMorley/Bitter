//
//  NewBiteView.swift
//  Bitter
//
//  Created by Cody Morley on 10/24/23.
//

import SwiftUI

struct NewBiteView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var caption = ""
    let placeholder = "Go ahead, take a bite..."
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    //add action
                } label: {
                    Text("Post")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextAreaView(text: $caption, placeholderText: placeholder)
            }
            .padding()
        }
    }
}

#Preview {
    NewBiteView()
}
