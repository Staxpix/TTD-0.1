//
//  PlaceholderView.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Ne schnelle Idee malen?")
                .font(.largeTitle)
            
            Text("Einfach eine neue Datei anlegen und los gehts!")
            
            Image(systemName: "scribble")
                .font(.largeTitle)
        }
    }
}
