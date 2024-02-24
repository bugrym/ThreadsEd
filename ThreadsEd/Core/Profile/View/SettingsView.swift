//
//  SettingsView.swift
//  ThreadsEd
//
//  Created by vbugrym on 21.01.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 12) {
                
                // replace with view builder for reusability
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "bell")
                        Text("Notifications")
                    }
                    .foregroundStyle(.black)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "lock")
                        Text("Privacy")
                    }
                    .foregroundStyle(.black)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "person.circle")
                        Text("Account")
                    }
                    .foregroundStyle(.black)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "questionmark.circle")
                        Text("Help")
                    }
                    .foregroundStyle(.black)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "exclamationmark.circle")
                        Text("About")
                    }
                    .foregroundStyle(.black)
                }
                
                Divider()
                
                Button {
                    AuthService.shared.signOut()
                } label: {
                    Text("Log Out")
                        .foregroundStyle(.black)
                }
                
                Spacer()
            }
            .font(.subheadline)
            .padding()
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SettingsView()
}


