//
//  ContentView.swift
//  rebase-interattivo
//
//  Created by Antonio on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.items) { item in
                    HStack {
                        Text("Item with id: **\(item.prettyId)**")
                        Spacer()
                        Button(action: {
                            withAnimation {
                                viewModel.delete(item: item)
                            }
                        }) {
                            Image(systemName: "trash")
                        }
                    }
                }
            }
            .navigationTitle("Rebase interattivo")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
