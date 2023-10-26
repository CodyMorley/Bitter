//
//  SideMenuOptionRowView.swift
//  Bitter
//
//  Created by Cody Morley on 10/23/23.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    var option: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: option.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(option.description)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

#Preview {
    SideMenuOptionRowView(option: .profile)
}
