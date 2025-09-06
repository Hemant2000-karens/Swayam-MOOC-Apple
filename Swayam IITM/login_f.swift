//
//  login_f.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 12/08/25.
//

import SwiftUI

struct login_f:View {
    var body: some View {
        VStack(){
            Text("Swayam")
                .font(.custom("Impact", size: 34))
                .foregroundColor(.blue)
//                .padding(.top, 40)
            
            // MARK: - Important Notice Box
            VStack(alignment: .leading, spacing: 8) {
                Text("Important:")
                    .font(.headline)
                    .bold()
                
                Text("""
                We've upgraded our authentication system from May 2025. If you were using 'Sign in with user name', please confirm your sign-up with the same email ID again. [Click Here](https://storage.googleapis.com/swayam2_central/assets/pdf/swayam_sign_up_web.pdf) to follow steps to create account with 'Sign up with email'. Inconvenience is regretted. Social logins (Gmail or Microsoft) are not affected.
                """)
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
            .padding(.horizontal)
            
        }
    }
}



#Preview{
    login_f()
}
