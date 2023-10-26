//
//  UserStatsView.swift
//  Bitter
//
//  Created by Cody Morley on 10/23/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack {
                Text("69")
                    .font(.subheadline).bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("420M")
                    .font(.subheadline).bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    UserStatsView()
}
