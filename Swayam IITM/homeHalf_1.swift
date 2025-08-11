//
//  homeHalf_1.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 11/08/25.
//

//import SwiftUI
//
//struct homeHalf_1: View {
//    // Circle opacity control
//    @State private var circleOpacity: Double = 0.9
//    
//    var body: some View {
//        ZStack {
//            Image("contentView")
//                .frame(width: 100, height: 100, alignment: .center)
//            
//            Circle()
//                .fill(Color.white.opacity(circleOpacity))
//                .frame(width: 300, height: 300)
//                .overlay(
//                    VStack(spacing: 8) {
//                        Text("Welcome to")
//                            .font(.title)
//                            .foregroundColor(.black)
//                        
//                        Text("Swayam")
//                            .font(.custom("Impact", size: 40))
//                            .foregroundColor(.blue)
//                    }
//                    .multilineTextAlignment(.center)
//                )
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    homeHalf_1()
//}

import SwiftUI

struct homeHalf_1: View {
    @State private var circleOpacity: Double = 1.0
    
    var body: some View {
        ZStack {
            Image("contentView")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Circle()
                        .fill(Color.white.opacity(circleOpacity))
                        .frame(maxWidth: 300, maxHeight: 300) // limit size
                    
                    VStack(spacing: 8) {
                        Text("Welcome To")
                            .font(.title2)
                        
                        Text("Swayam")
                            .font(.custom("Impact", size: 40))
                            .foregroundColor(.blue)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


#Preview {
    homeHalf_1()
}
