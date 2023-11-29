//
//  CreateThreadView.swift
//  ThreadsEd
//
//  Created by vbugrym on 29.11.2023.
//

import SwiftUI

struct CreateThreadView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("Thread")
            .font(.title)
            .bold()
    }
}

#Preview {
    CreateThreadView()
}
