//
//  login_s.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 12/08/25.
//

import SwiftUI
struct login_s:View {
    var body: some View {
        // MARK: - Sign in with Email
        VStack(spacing: 16) {
            Text("Sign in with your Email")
                .font(.system(size: 18, design: .rounded)) // Rounded font
                .foregroundColor(.primary)
            
            TextField("Email Address", text: .constant(""))
                .textContentType(.emailAddress)
                .padding(.all,8)
                .background(.regularMaterial)
                .cornerRadius(10)
            
            SecureField("Password", text: .constant(""))
                .textContentType(.password)
                .padding(.all,8)
                .background(.thinMaterial)
                .cornerRadius(10)
            
            Button("Forgot your password?") {}
                .font(.footnote)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button(action: {}) {
                Text("Sign In")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.all,8)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
        
        // MARK: - Or Login With
        VStack(spacing: 12) {
            Text("Or login with")
                .foregroundColor(.secondary)
            
            HStack(spacing: 16) {
                SocialLoginButton(title: "Microsoft", color: Color(.white), icon: "ms-icon")
                SocialLoginButton(title: "Google", color: Color(.white), icon: "google-icon")
            }
        }
        .padding(.horizontal)
        
        // MARK: - Sign Up Link
        HStack {
            Text("Don't have an account?")
            Button("Sign up now") {}
                .foregroundColor(.blue)
                .bold()
        }
        .font(.footnote)
        .padding(.bottom, 15)
        
        Spacer()
    }
}

struct SocialLoginButton: View {
    let title: String
    let color: Color
    let icon: String
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Image(icon)
                    .frame(width: 2,height: 2, alignment: .trailing)
                Text(title)
                    .foregroundStyle(Color(.black))
            }
            .frame(maxWidth: .infinity)
            .padding(.all,8)
            .background(color)
            .cornerRadius(10)
            .border(.thinMaterial)
        }
    }
}

#Preview{
    login_s()
}
