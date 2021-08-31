//
//  Row.swift
//  EditListSample2
//
//  Created by Yusuke Hasegawa on 2021/08/31.
//

import SwiftUI

struct Row: View {
    
    @Binding var fruit: Fruit
    var onToggle: () -> Void
    
    var body: some View {
        HStack {
            Text(fruit.name)
                .foregroundColor(self.fruit.visible ? .black : .gray)
            Spacer()
            Toggle("", isOn: $fruit.visible)
        }
        
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(fruit: .constant(.init(name: "Apple", visible: true)), onToggle: { })
    }
}
