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
            if isLandscape(for: geometry) || isMacOS {
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
    
    // Detect macOS
    var isMacOS: Bool {
#if os(macOS)
        return true
#else
        return false
#endif
    }
    
    // Detect landscape using width/height
    func isLandscape(for geometry: GeometryProxy) -> Bool {
        geometry.size.width > geometry.size.height
    }
    
    // Different ratios for devices
    func ratio(for geometry: GeometryProxy) -> (CGFloat, CGFloat) {
#if os(macOS)
        return (0.4, 0.6)
#else
        // iPhone or iPad Landscape
        if UIDevice.current.userInterfaceIdiom == .phone {
            return (0.5, 0.5) // iPhone Landscape
        } else {
            return (0.5, 0.5) // iPad Landscape (balanced)
        }
#endif
    }
}

#Preview {
    HomeCombinedView()
}
