//
//  DrawingManager.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI
// Kommunikationsbrücke zum CDM
class DrawingManager: ObservableObject {
    @Published var docs: [DrawingDocument]
    
    init() {
        docs = CoreDataManagerPK.shared.getData()
    }
    
    func update(data: Data, for id: UUID) {
        if let index = self.docs.firstIndex(where: {$0.id == id}) {
            self.docs[index].data = data
            CoreDataManagerPK.shared.updateData(data: self.docs[index])
        }
    }
    
    func getData(for id: UUID) -> Data {
        if let doc = self.docs.first(where: {$0.id == id}) {
            return doc.data
        }
        return Data()
    }
    
    func addData(doc: DrawingDocument) {
        docs.append(doc)
        CoreDataManagerPK.shared.addData(doc: doc)
    }
    
    func delete(for indexSet: IndexSet) {
        for index in indexSet {
            CoreDataManagerPK.shared.deleteData(data: docs[index])
            docs.remove(at: index)
        }
    }
    
}
