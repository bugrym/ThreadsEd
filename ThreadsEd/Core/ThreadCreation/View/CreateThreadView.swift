//
//  CreateThreadView.swift
//  ThreadsEd
//
//  Created by vbugrym on 29.11.2023.
//

import SwiftUI

struct CreateThreadView: View {
    @Environment(\.dismiss) var dismiss
    @State private var thread = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("charles.leclerc")
                        TextField("Start a thread...", text: $thread, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !thread.isEmpty {
                        Button {
                            thread.removeAll()
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                                .opacity(thread.isEmpty ? 0 : 1)
                        }
                        
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {
                        
                    }
                    .opacity(thread.isEmpty ? 0.5 : 1)
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .disabled(thread.isEmpty)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
