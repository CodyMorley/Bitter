//
//  ProfileUserDetailsView.swift
//  Bitter
//
//  Created by Cody Morley on 10/22/23.
//

import SwiftUI

struct ProfileUserDetailsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Christian Bale")
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@iambatman")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your mom's preferred batman.")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NJ")
                }
                
                HStack {
                    Image(systemName: "link")
                    Text("www.iambatman.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            UserStatsView()
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileUserDetailsView()
}
