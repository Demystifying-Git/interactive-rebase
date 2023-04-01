//
//  Item.swift
//  rebase-interattivo
//
//  Created by Antonio on 01/04/23.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    
    var prettyId: String {
        id.uuidString.prefix(5).description
    }
}
