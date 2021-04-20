//
//  PaceRechnerView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 11.04.21.
//

import SwiftUI

struct PaceRechnerView: View {
    
    @State var picker1: String
    
    var body: some View {
        VStack {
            Picker(selection: $picker1, label: Text("Picker"), content: {
                Text("1").tag(1)
                Text("2").tag(2)
            })
            Text("\(picker1)")
        }
        
    }
}

struct PaceRechnerView_Previews: PreviewProvider {
    static var previews: some View {
        PaceRechnerView(picker1: "jfdkaö")
    }
}
