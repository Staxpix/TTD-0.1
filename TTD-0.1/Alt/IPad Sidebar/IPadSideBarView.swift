//
//  IPadSideBarView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 11.04.21.
//

import SwiftUI

struct IPadSideBarView: View {
    var body: some View {
        
        NavigationView {
            List {
                
                HStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                
                HStack {
                    Image(systemName: "newspaper.fill")
                    Text("News")
                }
                
                
                HStack {
                    Image(systemName: "person.fill")
                    Text("Trainer")
                }
                
                
                
            }.frame(maxWidth: 300)
        }
        
    }
}

struct IPadSideBarView_Previews: PreviewProvider {
    static var previews: some View {
        IPadSideBarView()
            .previewLayout(.sizeThatFits)
    }
}
