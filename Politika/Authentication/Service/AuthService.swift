//
//  AuthService.swift
//  Threads
//
//  Created by Kaan Tan Karabulut on 31.10.2023.
//

import Firebase
import FirebaseFirestoreSwift

class AuthService {
    @Published var userSession: FirebaseAuth.User?

    static let shared = AuthService()

    init() {
        self.userSession = Auth.auth().currentUser
    }

    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await UserService.shared.fetchCurrentUser()
        } catch {
            print("DEBUG: failed to Login with error \(error.localizedDescription)")
        }
    }

    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String, gender: String, country: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await self.uploadUserData(withEmail: email, fullname: fullname, username: username, id: result.user.uid, gender: gender, country: country)
        } catch {
            print("DEBUG: failed to create user with error \(error.localizedDescription)")
        }
    }

    func signOut() {
        try? Auth.auth().signOut() // signs out on backend
        self.userSession = nil // this removes session locally and updates routing
        UserService.shared.reset() // sets current object to nil
    }

    @MainActor
    private func uploadUserData(withEmail email: String, fullname: String, username: String, id: String, gender: String, country: String) async throws {
        let user = User(id: id, fullname: fullname, email: email, username: username, gender: gender, country: country)
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        UserService.shared.currentUser = user
    }

//    #
//    Test Bellow
//    #

//    @MainActor
//    private func uploadPoliticianData(id: String, name: String, title: String, biography: String, imageName: String, highlights: [(icon: String, text: String)], country: String, bornYear: Int) async throws {
//        let politician = Politician(id: id, name: name, title: title, biography: biography, imageName: imageName, highlights: highlights, country: country, bornYear: bornYear)
//        guard let politicianData = try? Firestore.Encoder().encode(politician) else { return }
//        try await Firestore.firestore().collection("politician").document(id).setData(politicianData)
//        // UserService.shared.currentUser = user
//    }
}
