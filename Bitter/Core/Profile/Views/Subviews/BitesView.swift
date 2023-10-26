//
//  BitesView.swift
//  Bitter
//
//  Created by Cody Morley on 10/23/23.
//

import SwiftUI

struct BitesView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...9, id: \.self) { _ in
                    BiteRowView()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    BitesView()
}
