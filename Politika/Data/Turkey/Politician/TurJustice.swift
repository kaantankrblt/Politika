//
//  TurJustice.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turJustice = Politician(
    id: NSUUID().uuidString,
    name: "Yılmaz Tunç",
    title: "Minister of Justice of Türkiye", // Updated title
    biography: """
    Yılmaz Tunç (born 25 November 1976) is a Turkish politician and lawyer serving as the Minister of Justice of Türkiye. He previously served as a member of the Grand National Assembly from the Justice and Development Party (AK Party). Tunç has a legal background and served in various positions related to justice before entering politics.
    """,
    imageName: "TurJusticeImg", // Specific image name
    highlights: [
        ("calendar", "1976"), // Corrected birth year
        ("graduationcap", "Ankara University / Law / 2001"), // Updated education
        ("person.3.fill", "Justice and Development Party / 2023"),
    ],
    country: "Turkey",
    bornYear: 1976 // Corrected birth year
)
