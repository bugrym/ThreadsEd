//
//  CircularProfileImageView.swift
//  ThreadsEd
//
//  Created by vbugrym on 02.12.2023.
//

import SwiftUI

struct CircularProfileImageView: View {
    @State var imageName: String?
    
    var body: some View {
        Image(systemName: "person")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .background(.red)
            .clipShape(Circle())
        
    }
}

#Preview {
    CircularProfileImageView()
}
