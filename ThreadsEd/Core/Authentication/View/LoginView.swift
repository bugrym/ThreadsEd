//
//  LoginView.swift
//  ThreadsEd
//
//  Created by vbugrym on 29.11.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
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
                }
                
                NavigationLink {
                    Text("Forger password?")
                } label: {
                    Text("Forget password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                        .modifier(ThreadsFilledButtonModifier())
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 4) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
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
}

#Preview {
    LoginView()
}
