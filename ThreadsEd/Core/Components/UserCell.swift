//
//  UserCell.swift
//  ThreadsEd
//
//  Created by vbugrym on 02.12.2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("ironman")
                    .fontWeight(.semibold)
                
                Text("Tony Stark")
            }
            .font(.footnote)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Follow")
                    .frame(width: 100, height: 32)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    }
            }
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
