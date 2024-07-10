//
//  TurEnergy.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turEnergy = Politician(
    id: NSUUID().uuidString,
    name: "Alparslan Bayraktar",
    title: "Minister of Energy and Natural Resources of Turkiye",
    biography: """
    Alparslan Bayraktar (born 1 March 1975) is a Turkish politician and engineer who has been serving as the Minister of Energy and Natural Resources. With a strong background in energy policy and management, he has been instrumental in shaping Turkey's energy strategy. Bayraktar was appointed as Minister of Energy and Natural Resources in 2023.
    """,
    imageName: "TurEnergyImg",
    highlights: [
        ("calendar", "1975"),
        ("graduationcap", "Istanbul Technical University / Electrical Engineering / 1997"),
        ("person.3.fill", "Justice and Development Party / 2001"),
    ],
    country: "Turkey",
    bornYear: 1975
)
