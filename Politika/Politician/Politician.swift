//
//  President.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 9.06.2024.
//

import Foundation

struct Politician: Identifiable {
    let id: String
    let name: String
    let title: String
    let biography: String
    let imageName: String
    let highlights: [(icon: String, text: String)]
    let country: String
    let bornYear: Int

    func toDictionary() -> [String: Any] {
        return [
            "id": id,
            "name": name,
            "title": title,
            "biography": biography,
            "imageName": imageName,
            "highlights": highlights.map { ["icon": $0.0, "description": $0.1] },
            "country": country,
            "bornYear": bornYear
        ]
    }
}
