//
//  Database.swift
//  BMSTU-Map
//
//  Created by Никита Курганов on 07.04.17.
//  Copyright © 2017 Никита Курганов. All rights reserved.
//

import RealmSwift

class Database: Object {
    dynamic var name = String()
    dynamic var latitude = Double()
    dynamic var longitude = Double()
    //статический метод для быстрой инициализации
    static func getUserObject(
        name: String, latitude: Double, longitude: Double) -> Database {
        let data = Database()
        data.name = name
        data.latitude = latitude
        data.longitude = longitude
        return data
    }
}

