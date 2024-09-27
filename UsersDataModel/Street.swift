//
//  Street.swift
//  UsersData
//
//  Created by Anna Hakobyan on 27.09.24.
//

import Foundation

struct Street: Codable {
    let number: Int
    let name: String
    var fullAddress: String {
        return "\(number) \(name)"
    }

    init(number: Int, name: String) {
        self.number = number
        self.name = name
    }
}
