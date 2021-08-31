//
//  ContentView.swift
//  EditListSample2
//
//  Created by Yusuke Hasegawa on 2021/08/31.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(self.viewModel.fruits.indices, id: \.self) { index in
                    Row(fruit: $viewModel.fruits[index])
                }.onDelete(perform: { indexSet in
                    self.viewModel.delete(indices: indexSet)
                })
            }
            .listStyle(GroupedListStyle())
            HStack {
                Button(action: { }, label: {
                    Label.init("Add", systemImage: "plus")
                })
                Spacer()
            }.padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
