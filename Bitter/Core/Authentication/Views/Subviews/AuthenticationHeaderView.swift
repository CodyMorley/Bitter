//
//  AuthenticationHeaderView.swift
//  Bitter
//
//  Created by Cody Morley on 10/25/23.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    let text1: String
    let text2: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
            }
            Text(text1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(text2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedHeaderShape(corners: [.bottomRight]))
    }
}

#Preview {
    AuthenticationHeaderView(text1: "Hello.", text2: "Welcome Back")
}
