//
//  MainInterfaceView.swift
//  Bitter
//
//  Created by Cody Morley on 10/26/23.
//

import SwiftUI

struct MainInterfaceView: View {
    @State private var showSideMenu = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showSideMenu)
            
            if showSideMenu {
                ZStack {
                    Color(.black)
                        .opacity(showSideMenu ? 0.25 : 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showSideMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: showSideMenu ? 0 : -300, y: 0)
                .background(showSideMenu ? Color.white : Color.clear)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {
                        showSideMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
        }
        .onAppear {
            showSideMenu = false
        }
    }
}

#Preview {
    MainInterfaceView()
}
