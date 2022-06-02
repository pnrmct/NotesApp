//
//  NotesAppViewModel.swift
//  NotesApp
//
//  Created by Pınar Macit on 2.06.2022.
//

import UIKit

class NotesAppViewModel {
    
    var notesArray = [Notes]()
    
    let coreDataHelper = CoreDataHelper()
    
    func fetchData() {
        
        notesArray = coreDataHelper.fetchData() ?? [Notes]()
    }

func saveData(title: String){
    
    coreDataHelper.saveData(title:title)
}
func deleteData(index: Int) {
    coreDataHelper.deleteData(index:index)
    
 }
}
