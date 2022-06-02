//
//  CoreDataHelper.swift
//  NotesApp
//
//  Created by Pınar Macit on 2.06.2022.
//

import UIKit
 
class CoreDataHelper {
    static let shared = CoreDataHelper()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func fetchData() -> [Notes]? {
        do{
            return try self.context.fetch(Notes.fetchRequest())
        }catch{
            print("error: \(error.localizedDescription)")
        }
        return nil
    }
    
    func saveData(title: String) {
        let notes = Notes(context: context)
        notes.title = title
        do{
            try self.context.save()
        }catch{
            print("error: \(error.localizedDescription)")
        }
    }
    
    func deleteData(index: Int) {
        
        if let dataArray = fetchData() {
        context.delete(dataArray[index])
        do{
            try self.context.save()
        }catch{
            print("error: \(error.localizedDescription)")
            
      }
    }
  }
}

