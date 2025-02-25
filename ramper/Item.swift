//
//  Item.swift
//  ramper
//
//  Created by Warwick Horton on 26/2/2025.
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
