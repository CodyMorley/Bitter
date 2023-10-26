//
//  ProfileView.swift
//  Bitter
//
//  Created by Cody Morley on 10/22/23.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            ProfileHeaderView()
            
            ProfileActionButtonsView()
            
            ProfileUserDetailsView()
            
            BiteFilterBarView()
            
            BitesView()
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}
