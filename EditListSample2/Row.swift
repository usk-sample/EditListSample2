//
//  Row.swift
//  EditListSample2
//
//  Created by Yusuke Hasegawa on 2021/08/31.
//

import SwiftUI

struct Row: View {
    
    @Binding var fruits: Fruits
    
    var body: some View {
        HStack {
            Text(fruits.name)
                .foregroundColor(self.fruits.visible ? .black : .gray)
            Spacer()
        }
        
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(fruits: .constant(.init(name: "Apple", visible: true)))
    }
}
