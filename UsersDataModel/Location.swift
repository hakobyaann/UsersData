//
//  Location.swift
//  UsersData
//
//  Created by Anna Hakobyan on 27.09.24.
//

import Foundation

struct Location: Codable {
    let street: Street
    let city: String
    let country: String

    init(street: Street, city: String, country: String) {
        self.street = street
        self.city = city
        self.country = country
    }
}
