//
//  BiteFilterViewModel.swift
//  Bitter
//
//  Created by Cody Morley on 10/22/23.
//

import Foundation

enum BiteFilterViewModel: Int, CaseIterable {
    case bites
    case replies
    case likes
    
    var title: String {
        switch self {
        case .bites:
            return "Bites"
        case .replies:
            return "Replies"
        case .likes:
            return "Likes"
        }
    }
}
