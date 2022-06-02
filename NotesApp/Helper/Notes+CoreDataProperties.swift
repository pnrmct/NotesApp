//
//  Notes+CoreDataProperties.swift
//  NotesApp
//
//  Created by Pınar Macit on 2.06.2022.
//
//

import Foundation
import CoreData


extension Notes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notes> {
        return NSFetchRequest<Notes>(entityName: "Notes")
    }

    @NSManaged public var title: String?

}

extension Notes : Identifiable {

}
