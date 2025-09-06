//
//  HomeView.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 04/08/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        GeometryReader { geometry in
            if isLandscape(for: geometry) {
                HStack(spacing: 0) {
                    login_f()
                        .frame(width: geometry.size.width * ratio(for: geometry).0,
                               height: geometry.size.height)
                        .clipped()
                    
                    login_s()
                        .frame(width: geometry.size.width * ratio(for: geometry).1,
                               height: geometry.size.height)
                }
            } else {
                VStack(spacing:10) {
                    login_f()
                        .frame(width: geometry.size.width,
                               height: geometry.size.height * 0.45)
                        .clipped()
                    
                    login_s()
                        .frame(width: geometry.size.width,
                               height: geometry.size.height * 0.2)
                }
            }
        }
        .ignoresSafeArea()
//        .padding(.all,2.5)
        Spacer()
    }
    
    // Detect landscape using width/height
    func isLandscape(for geometry: GeometryProxy) -> Bool {
        geometry.size.width > geometry.size.height
    }

    
    // Different ratios for devices
    func ratio(for geometry: GeometryProxy) -> (CGFloat, CGFloat) {
        #if os(iOS) || os(iPadOS)
        if UIDevice.current.userInterfaceIdiom == .phone {
            return (0.3, 0.3) // iPhone Landscape
        } else {
            return (0.5, 0.5) // iPad Landscape
        }
        #else
        return (0.4, 0.3) // macOS ya tvOS default
        #endif
        
    }
}



#Preview {
    HomeView()
}

