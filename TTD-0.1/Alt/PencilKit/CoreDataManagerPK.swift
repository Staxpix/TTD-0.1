//
//  CoreDataManagerPK.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//
// GitHubTest2
import Foundation
import CoreData

class CoreDataManagerPK {
    static let shared = CoreDataManagerPK()
    
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "DrawingDoc")
        container.loadPersistentStores { (storeDesc, error) in
            if let error = error as NSError? {
                fatalError("bewusst crashen lassen \(error.userInfo)")
            }
        }
        
        
        return container
    }()
    
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
                
            } catch {
                let nserror = error as NSError
                fatalError("bewusst crashen lassen \(nserror.userInfo)")
            }
        }
    }
    
    func addData(doc: DrawingDocument) {
        let drawing = DrawingDoc(context: persistentContainer.viewContext)
        drawing.data = doc.data
        drawing.id = doc.id
        drawing.name = doc.name
        
        saveContext()
    }
    
    func getData() -> [DrawingDocument] {
        let request: NSFetchRequest<DrawingDoc> = DrawingDoc.fetchRequest()
        request.returnsObjectsAsFaults = false
        var fetchResults = [DrawingDocument]()
        
        do {
            let result = try persistentContainer.viewContext.fetch(request)
            for data in result {
                fetchResults.append(DrawingDocument(id: data.id ?? UUID(), data: data.data ?? Data(), name: data.name ?? ""))
            }
        } catch {
            print("fetching failed")
        }
        
        return fetchResults
    }
    
    func updateData(data: DrawingDocument) {
        let request: NSFetchRequest<DrawingDoc> = DrawingDoc.fetchRequest()
        let predicate = NSPredicate(format: "id = %@", data.id as CVarArg)
        request.predicate = predicate
        do {
            let results = try persistentContainer.viewContext.fetch(request)
            let obj = results.first
            obj?.setValue(data.data, forKey: "data")
            saveContext()
        } catch {
            print("Error bei saven!")
        }
    }
    
    func deleteData(data: DrawingDocument) {
        let request: NSFetchRequest<DrawingDoc> = DrawingDoc.fetchRequest()
        request.includesPropertyValues = false
        let predicate = NSPredicate(format: "id = %@", data.id as CVarArg)
        request.predicate = predicate
        do {
            let results = try persistentContainer.viewContext.fetch(request)
            for item in results {
                persistentContainer.viewContext.delete(item)
            }
            saveContext()
        } catch {
            print("Error bei deleten!")
        }
    }
    
}
