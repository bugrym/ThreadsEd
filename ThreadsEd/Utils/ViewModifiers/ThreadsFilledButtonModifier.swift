//
//  ThreadsFilledButtonModifier.swift
//  ThreadsEd
//
//  Created by vbugrym on 29.11.2023.
//

import SwiftUI

struct ThreadsFilledButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
