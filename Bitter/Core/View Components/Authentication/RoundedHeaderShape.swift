//
//  RoundedHeaderShape.swift
//  Bitter
//
//  Created by Cody Morley on 10/24/23.
//

import SwiftUI

struct RoundedHeaderShape: Shape {
    var corners: UIRectCorner
    let cornerSize = CGSize(width: 80, height: 80)
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: cornerSize)
        return Path(path.cgPath)
    }
}
