//
//  ResponseModel.swift
//  UsersData
//
//  Created by Anna Hakobyan on 27.09.24.
//

import Foundation

struct UserResponse: Codable {
    let results: [User]

    init(results: [User]) {
        self.results = results
    }
}
