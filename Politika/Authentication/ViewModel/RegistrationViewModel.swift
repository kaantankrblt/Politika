//
//  RegistrationViewModel.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 31.10.2023.
//

import Foundation

enum Gender: String, CaseIterable {
    case male
    case female
}

enum Country: String, CaseIterable {
    case turkey
    case korea
    case usa
}

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    @Published var gender: Gender = .male
    @Published var country: Country = .turkey

    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullname,
            username: username,
            gender: gender.rawValue,
            country: country.rawValue)
    }
}
