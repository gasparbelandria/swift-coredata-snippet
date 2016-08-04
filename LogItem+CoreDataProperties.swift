//
//  LogItem+CoreDataProperties.swift
//  MyLog
//
//  Created by Gaspar Belandria on 8/3/16.
//  Copyright © 2016 Gaspar Belandria. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension LogItem {

    @NSManaged var title: String?
    @NSManaged var itemText: String?
    
    class func createInManagedObjectContext(moc: NSManagedObjectContext, title: String, text: String) -> LogItem {
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: moc) as! LogItem
        newItem.title = title
        newItem.itemText = text
        
        return newItem
    }

}
