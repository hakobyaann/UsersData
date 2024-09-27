//
//  main.swift
//  UsersData
//
//  Created by Anna Hakobyan on 27.09.24.
//

import Foundation

let networkProvider = NetworkProvider()

func printUsers(page: Int) async {
    do {
        let users = try await networkProvider.getUsers(page: page, results: 10)
        for user in users {
            print("fullname: \(user.fullName)")
            print("location: \(user.location.street.fullAddress), \(user.location.city), \(user.location.country)")
        }
        if page < 5 {
            await printUsers(page: page + 1)
        }
    } catch {
        print(error.localizedDescription)
    }
}

Task {
    await printUsers(page: 1)
}

RunLoop.main.run()
