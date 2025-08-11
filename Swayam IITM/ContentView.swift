//
//  ContentView.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 01/08/25.
//

import SwiftUI

struct HomeCombinedView: View {
    var body: some View {
        GeometryReader { geometry in
            if isLandscape(for: geometry) {
                HStack(spacing: 0) {
                    homeHalf_1()
                        .frame(width: geometry.size.width * ratio(for: geometry).0,
                               height: geometry.size.height)
                        .clipped()
                    
                    homeHalf_2()
                        .frame(width: geometry.size.width * ratio(for: geometry).1,
                               height: geometry.size.height)
                }
            } else {
                VStack(spacing: 0) {
                    homeHalf_1()
                        .frame(width: geometry.size.width,
                               height: geometry.size.height * 0.8)
                        .clipped()
                    
                    homeHalf_2()
                        .frame(width: geometry.size.width,
                               height: geometry.size.height * 0.2)
                }
            }
        }
        .ignoresSafeArea()
    }
    
    // Detect landscape using width/height
    func isLandscape(for geometry: GeometryProxy) -> Bool {
        geometry.size.width > geometry.size.height
    }

    
    // Different ratios for devices
    func ratio(for geometry: GeometryProxy) -> (CGFloat, CGFloat) {
        #if os(iOS) || os(iPadOS)
        if UIDevice.current.userInterfaceIdiom == .phone {
            return (0.5, 0.5) // iPhone Landscape
        } else {
            return (0.4, 0.6) // iPad Landscape
        }
        #else
        return (0.6, 0.4) // macOS ya tvOS default
        #endif
    }
    
}

#Preview {
    HomeCombinedView()
}
