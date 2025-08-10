//
//  ContentView.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 01/08/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    
    var body: some View {
        Image("contentView")
            .resizable()
        
        VStack(alignment: .center){
            
            
            GeometryReader{
                geo in
                Rectangle()
                    .fill(Color.white)
                    .frame(width: .infinity, height: (geo.size.height*0.25))
            }
            
            
            
        }.ignoresSafeArea()
       
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
