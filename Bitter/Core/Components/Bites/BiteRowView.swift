//
//  BiteRowView.swift
//  Bitter
//
//  Created by Cody Morley on 10/21/23.
//

import SwiftUI

struct BiteRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Tony Stark")
                            .font(.subheadline).bold()
                        Text("@IronMan")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    Text("That's how dad did it, that's how America does it, and it's worked out pretty well so far.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            HStack {
                Button {
                    //action
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "hand.thumbsdown")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
    }
}

#Preview {
    BiteRowView()
}
