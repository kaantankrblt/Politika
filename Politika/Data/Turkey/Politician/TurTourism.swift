//
//  TurTourism.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turTourism = Politician(
    id: NSUUID().uuidString,
    name: "Mehmet Nuri Ersoy",
    title: "Minister of Culture and Tourism of Turkiye",
    biography: """
    Mehmet Nuri Ersoy (born 27 June 1968) is a Turkish businessman and politician who has been serving as the Minister of Culture and Tourism. With a background in the tourism industry, he has played a pivotal role in promoting Turkey as a top travel destination. Ersoy was appointed as Minister of Culture and Tourism in 2018 and continues to contribute to the cultural and tourism sectors.
    """,
    imageName: "TurTourismImg",
    highlights: [
        ("calendar", "1968"),
        ("graduationcap", "Istanbul University / Business Administration / 1990"),
        ("person.3.fill", "Justice and Development Party / 2018"),
    ],
    country: "Turkey",
    bornYear: 1968
)
