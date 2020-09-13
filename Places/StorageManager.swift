//
//  StorageManager.swift
//  Places
//
//  Created by Danil Belikhov on 13.09.2020.
//  Copyright © 2020 Danil Belikhov. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
}
