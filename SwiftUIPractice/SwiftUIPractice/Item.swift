//
//  Item.swift
//  SwiftUIPractice
//
//  Created by Sakata Keisuke on 2024/09/10.
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
