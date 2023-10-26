//
//  ProfileActionButtonsView.swift
//  Bitter
//
//  Created by Cody Morley on 10/22/23.
//

import SwiftUI

struct ProfileActionButtonsView: View {
    var body: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                //action
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
}

#Preview {
    ProfileActionButtonsView()
}
