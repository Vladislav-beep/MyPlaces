//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Владислав Сизонов on 01.10.2021.
//

import RealmSwift

let realm = try! Realm()

class Storagemanager {
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place )
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
