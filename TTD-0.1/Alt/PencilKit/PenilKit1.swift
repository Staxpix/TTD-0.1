//
//  PenilKit1.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI
import PencilKit


struct PenilKit1: View {
    
    
    
    @ObservedObject var manager = DrawingManager()
    @State private var addNewShown = false
    
    var body: some View {
        
        
        
        NavigationView {
            List {
                ForEach(manager.docs) { docs in
                    NavigationLink(
                        destination: DrawingWrapper(manager: manager, id: docs.id),
                        label: {
                            Text(docs.name)
                        })
                }.onDelete(perform: manager.delete)
            }.navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("TTD Notizen")
                        .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarItems(trailing: Button("Neu") {
                self.addNewShown.toggle()
                    
            })
            .sheet(isPresented: $addNewShown, content: {
                AddNewDocument(manager: manager, addShown: $addNewShown)
            })
            PlaceholderView()
        }
    }
    

}

struct PenilKit1_Previews: PreviewProvider {
    static var previews: some View {
        PenilKit1()
    }
}
