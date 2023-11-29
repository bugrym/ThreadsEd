//
//  RegistrationView.swift
//  ThreadsEd
//
//  Created by vbugrym on 29.11.2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(.logo)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.never)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username", text: $userName)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .modifier(ThreadsFilledButtonModifier())
            }
            .padding(.top)
            
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack(spacing: 4) {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundStyle(.black)
            }
            .padding(.vertical, 16)
        }
        .padding(.horizontal, 28)
    }
}

#Preview {
    RegistrationView()
}
