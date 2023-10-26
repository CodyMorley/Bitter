//
//  MainView.swift
//  Bitter
//
//  Created by Cody Morley on 10/23/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        Group {
            if authViewModel.session == nil {
                LoginView()
            } else {                
                MainInterfaceView()
            }
        }
    }
}


#Preview {
    MainView().environmentObject(AuthenticationViewModel())
}
