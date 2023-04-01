//
//  ViewModel.swift
//  rebase-interattivo
//
//  Created by Antonio on 01/04/23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published private(set) var items: [Item] = .mock
    
    func delete(item: Item) {
        guard
            let indexToRemove = items.firstIndex(where: { $0.id == item.id }),
            indexToRemove < items.count - 1
        else { return }
        items.remove(at: indexToRemove)
    }
    
}
