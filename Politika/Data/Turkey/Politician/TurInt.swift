//
//  TurInt.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turInt = Politician(
    id: NSUUID().uuidString,
    name: "Ali Yerlikaya",
    title: "Minister of Interior of Turkiye",
    biography: """
    Ali Yerlikaya (born 11 October 1968) is a Turkish politician and civil servant who has been serving as the Minister of Interior. He has held various administrative positions, including governor of several provinces in Turkey. Yerlikaya was appointed as Minister of Interior in 2023.
    """,
    imageName: "TurIntImg",
    highlights: [
        ("calendar", "1968"),
        ("graduationcap", "Istanbul University / Public Administration / 1989"),
        ("person.3.fill", "Justice and Development Party / 2023"),
    ],
    country: "Turkey",
    bornYear: 1968
)
