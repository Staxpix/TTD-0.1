//
//  WorkOutTest.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 28.04.21.
//

import SwiftUI

struct WorkOutTest: View {
    
    @State private var select = ""
    
    var body: some View {
        VStack {
            Picker(selection: $select, label: Text(""), content: {
                Text("1").tag(1)
                Text("2").tag(2)
            })
            Text(select)
        }
    }
}

struct WorkOutTest_Previews: PreviewProvider {
    static var previews: some View {
        WorkOutTest()
    }
}
