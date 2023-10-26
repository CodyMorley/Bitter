//
//  BiteFilterBarView.swift
//  Bitter
//
//  Created by Cody Morley on 10/22/23.
//

import SwiftUI

struct BiteFilterBarView: View {
    @State private var selectionFilter: BiteFilterViewModel = .bites
    @Namespace var animation
    
    var body: some View {
        HStack {
            ForEach(BiteFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectionFilter == item ? .semibold : .regular)
                        .foregroundColor(selectionFilter == item ? .black : .gray)
                    
                    if selectionFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectionFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
}

#Preview {
    BiteFilterBarView()
}
