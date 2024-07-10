//
//  TurEnv.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turEnv = Politician(
    id: NSUUID().uuidString,
    name: "Mehmet Özhaseki",
    title: "Minister of Environment, Urbanization and Climate Change of Turkiye",
    biography: """
    Mehmet Özhaseki (born 25 May 1957) is a Turkish politician who has been serving as the Minister of Environment, Urbanization and Climate Change. He has a background in urban planning and has held various governmental positions, including the mayor of Kayseri. Özhaseki was appointed as Minister of Environment, Urbanization and Climate Change in 2023.
    """,
    imageName: "TurEnvImg",
    highlights: [
        ("calendar", "1957"),
        ("graduationcap", "Hacettepe University / Mechanical Engineering / 1980"),
        ("person.3.fill", "Justice and Development Party / 2001"),
    ],
    country: "Turkey",
    bornYear: 1957
)
