//
//  SideMenuViewModel.swift
//  Bitter
//
//  Created by Cody Morley on 10/23/23.
//

import Foundation


enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout
    
    var description: String {
        switch self {
        case .profile:
            "Profile"
        case .lists:
            "Lists"
        case .bookmarks:
            "Bookmarks"
        case .logout:
            "Log Out"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile:
            "person"
        case .lists:
            "list.bullet"
        case .bookmarks:
            "bookmark"
        case .logout:
            "arrow.left.square"
        }
    }
}
