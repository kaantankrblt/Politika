//
//  PoliticianUpload.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 10.07.2024.
//

import Firebase
import FirebaseFirestore
import Foundation

func uploadPoliticianToFirestore(politician: Politician) {
    let db = Firestore.firestore()
    let politicianData = politician.toDictionary()
    let title = politicianData["title"] as! String

    // 1. Query for existing politician with the same title
    db.collection("politicians")
        .whereField("title", isEqualTo: title)
        .getDocuments { querySnapshot, error in
            if let error = error {
                print("Error checking for existing politician: \(error)")
                return
            }

            // 2. Check if a matching politician was found
            if querySnapshot!.isEmpty {
                // No match found, proceed with adding the new politician
                db.collection("politicians").addDocument(data: politicianData)
            } else {
                print("Politician with the same title already exists.")
            }
        }
}

// Call the function to upload the politician
// uploadPoliticianToFirestore(politician: newturVicePres)
