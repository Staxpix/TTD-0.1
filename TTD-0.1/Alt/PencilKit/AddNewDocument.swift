//
//  AddNewDocument.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI

struct AddNewDocument: View {
    @ObservedObject var manager: DrawingManager
    @State private var documentName: String = ""
    @Binding var addShown: Bool
    
    var body: some View {
        VStack {
            Text("Gib hier einen Namen für dein Dokument ein:")
            
            TextField("Na, wie soll´s denn heißen?", text: $documentName, onCommit: {
                save(fileName: documentName)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("OK") {
                save(fileName: documentName)
            }
        }.padding(80)
    }
    
    private func save(fileName: String) {
        manager.addData(doc: DrawingDocument(id: UUID(), data: Data(), name: fileName))
        addShown.toggle()
    }
    
}
