//
//  SideMenuView.swift
//  Bitter
//
//  Created by Cody Morley on 10/23/23.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Christian Bale")
                        .font(.headline)
                    
                    
                    Text("@iambatman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                if option == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(option: option)
                    }
                } else if option == .logout {
                    Button {
                        authViewModel.logout()
                    } label: {
                        SideMenuOptionRowView(option: option)
                    }
                } else {
                    SideMenuOptionRowView(option: option)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    SideMenuView()
}
