//
//  ViewModel.swift
//  EditListSample2
//
//  Created by Yusuke Hasegawa on 2021/08/31.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var fruits: [Fruit] = [
        .init(name: "Apple", visible: true),
        .init(name: "Banana", visible: true),
        .init(name: "Cherry", visible: true),
        .init(name: "Durian", visible: true),
        .init(name: "Grape", visible: true),
        .init(name: "Kiwi", visible: true),
    ]
    
}

extension ViewModel {
    
    func delete(indices: IndexSet) {
        fruits.remove(atOffsets: indices)
    }
    
    func toggle(index: Int) {
        fruits[index].visible.toggle()
    }
    
}
