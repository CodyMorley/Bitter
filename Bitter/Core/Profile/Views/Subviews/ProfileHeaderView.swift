//
//  ProfileHeaderView.swift
//  Bitter
//
//  Created by Cody Morley on 10/22/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }
                
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
}

#Preview {
    ProfileHeaderView()
}
