//
//  TurForeign.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turForeign = Politician(
    id: NSUUID().uuidString,
    name: "Hakan Fidan",
    title: "Minister of Foreign Affairs of Turkiye",
    biography: """
    Hakan Fidan (born 17 July 1968) is a Turkish diplomat and intelligence officer who has been serving as the Minister of Foreign Affairs. He previously served as the head of Turkey's National Intelligence Organization (MIT) and has played a crucial role in shaping the country's foreign policy. Fidan was appointed as Minister of Foreign Affairs in 2023.
    """,
    imageName: "TurForeignImg",
    highlights: [
        ("calendar", "1968"),
        ("graduationcap", "University of Maryland University College / Management and Political Science / 1999"),
        ("person.3.fill", "Justice and Development Party / 2023"),
    ],
    country: "Turkey",
    bornYear: 1968
)
