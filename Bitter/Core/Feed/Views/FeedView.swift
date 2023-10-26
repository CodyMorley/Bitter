//
//  FeedView.swift
//  Bitter
//
//  Created by Cody Morley on 10/21/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewBiteView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0...20, id: \.self) { _ in
                        BiteRowView()
                            .padding()
                    }
                }
            }
            
            Button {
                showNewBiteView.toggle()
            } label: {
                Image("bite-post")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewBiteView) {
                NewBiteView()
            }
        }
    }
}

#Preview {
    FeedView()
}
