//
//  User.swift
//  UsersData
//
//  Created by Anna Hakobyan on 27.09.24.
//

import Foundation

struct User: Codable {
    let name: Name
    let location: Location
    var fullName: String {
        return "\(name.title) \(name.first) \(name.last)"
    }

    init(name: Name, location: Location) {
        self.name = name
        self.location = location
    }
}
