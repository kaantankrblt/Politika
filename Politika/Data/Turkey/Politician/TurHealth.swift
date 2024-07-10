//
//  TurHealth.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turHealth = Politician(
    id: NSUUID().uuidString,
    name: "Fahrettin Koca",
    title: "Minister of Health of Turkiye",
    biography: """
    Fahrettin Koca (born 2 January 1965) is a Turkish physician and politician who has been serving as the Minister of Health. With a background in medicine and healthcare management, he has been instrumental in leading Turkey's health policies and initiatives. Koca was appointed as Minister of Health in 2018.
    """,
    imageName: "TurHealthImg",
    highlights: [
        ("calendar", "1965"),
        ("graduationcap", "Istanbul University / Medicine / 1988"),
        ("person.3.fill", "Justice and Development Party / 2018"),
    ],
    country: "Turkey",
    bornYear: 1965
)
