//
//  Item.swift
//  SwiftCut
//
//  Created by Sugandha Amatya on 4/8/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    var title: String
    
    init(timestamp: Date, title: String) {
        self.timestamp = timestamp
        self.title = title
    }
}