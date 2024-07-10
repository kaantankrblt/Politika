//
//  TurAgriForest.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turAgriForest = Politician(
    id: NSUUID().uuidString,
    name: "İbrahim Yumaklı",
    title: "Minister of Agriculture and Forestry of Turkiye",
    biography: """
    İbrahim Yumaklı (born 1 January 1970) is a Turkish politician who has served as the Minister of Agriculture and Forestry. He has an extensive background in agricultural management and policy-making, contributing significantly to the development of Turkey's agricultural sector. Yumaklı was appointed as Minister of Agriculture and Forestry in 2023.
    """,
    imageName: "TurAgriForestImg",
    highlights: [
        ("calendar", "1970"),
        ("graduationcap", "Ankara University / Agricultural Engineering / 1992"),
        ("person.3.fill", "Justice and Development Party / 2001"),
    ],
    country: "Turkey",
    bornYear: 1970
)
