//
//  homeHalf_1.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 11/08/25.
//

import SwiftUI

struct homeHalf_2: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Sign In Button - Blue background in Light, Dark Accent in Dark
            Button(action: signIn) {
                Text("Sign In/ Register")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(color: Color.accentColor.opacity(0.3), radius: 5, x: 0, y: 3)
            }
            
            // Register Button - Borderless with adaptive text color
            Button(action: register) {
                Text("Continue as Guest")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(Color.accentColor) // Will auto-adapt in dark mode
            }
            .buttonStyle(.borderless)
        }
        .padding(.horizontal, 40)
        .padding(.vertical, 50)
        .background(
        )
    }
}

func signIn() {
    // Sign in action here
}

func register() {
    // Register action here
}

#Preview {
    Group {
        homeHalf_2()
            .preferredColorScheme(.light)
        homeHalf_2()
            .preferredColorScheme(.dark)
    }
}

