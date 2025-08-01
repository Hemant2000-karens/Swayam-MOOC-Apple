//
//  Item.swift
//  Swayam IITM
//
//  Created by Hemant Kumar on 01/08/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
