//
//  Name.swift
//  UsersData
//
//  Created by Anna Hakobyan on 27.09.24.
//

import Foundation

struct Name: Codable {
    let title: String
    let first: String
    let last: String

    init(title: String, first: String, last: String) {
        self.title = title
        self.first = first
        self.last = last
    }
}
