//
//  TurDefense.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turDefense = Politician(
    id: NSUUID().uuidString,
    name: "Yaşar Güler",
    title: "Minister of National Defense of Turkiye",
    biography: """
    Yaşar Güler is a Turkish military officer and politician currently serving as the Minister of National Defense. He has a background in military strategy and defense policy, and has held various command positions within the Turkish Armed Forces. Güler is known for his leadership in national defense and security matters.
    """,
    imageName: "TurDefenseImg",
    highlights: [
        ("calendar", "Date of Birth"),
        ("graduationcap", "Military Academy"),
        ("person.3.fill", "Political Party Affiliation"),
    ],
    country: "Turkey",
    bornYear: 1954
)
