//
//  Array+Extensions.swift
//  rebase-interattivo
//
//  Created by Antonio on 01/04/23.
//

import Foundation

extension Array where Element == Item {
    
    static var mock: [Item] {
        var res = [Item]()
        for _ in 0..<5 {
            res.append(Item())
        }
        return res
    }
}
