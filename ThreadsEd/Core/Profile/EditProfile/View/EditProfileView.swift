//
//  EditProfileView.swift
//  ThreadsEd
//
//  Created by vbugrym on 05.12.2023.
//

import SwiftUI

struct EditProfileView: View {
    @State var bio = "Formula 1 Driver for Scuderia Ferrari"
    @State var link = ""
    @State var isPrivate = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(edges: [.bottom, .horizontal])
                
                VStack {
                    // name and profile photo
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Charles Leclerc")
                        }
                        
                        Spacer()
                        
                        CircularProfileImageView()
                    }
                    
                    Divider()
                    
                    // bio
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Bio")
                                .fontWeight(.semibold)
                            
                            TextField("Bio", text: $bio, axis: .vertical)
                        }
                    }
                    
                    Divider()
                    
                    // link
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Link")
                                .fontWeight(.semibold)
                            
                            TextField("Add link...", text: $link)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    
                    Divider()
                    
                    // private setting toggle
                    Toggle("Private profile", isOn: $isPrivate)
                        .fontWeight(.semibold)
                    
                    Divider()
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    EditProfileView()
}
